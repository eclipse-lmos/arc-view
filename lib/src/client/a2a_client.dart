/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/client/models/message.dart';
import 'package:arc_view/src/client/models/message_result.dart';
import 'package:arc_view/src/client/models/send_task.dart';
import 'package:arc_view/src/client/models/tool.dart';
import 'package:arc_view/src/client/notifiers/agent_stream_client_notifier.dart';
import 'package:arc_view/src/conversation/models/conversation.dart';
import 'package:arc_view/src/events/models/agent_events.dart';
import 'package:arc_view/src/skills/agent_card_retriever.dart';
import 'package:flutter_client_sse/constants/sse_request_type_enum.dart';
import 'package:flutter_client_sse/flutter_client_sse.dart';
import 'package:http/http.dart' as http;

import 'oneai_client.dart';

class A2aClient implements OneAIClient {
  A2aClient(this.agentUrl);

  final AgentUrlData agentUrl;

  @override
  close() {}

  @override
  Future<List<String>> getAgents() async {
    final card = await AgentCardRetriever().getAgentCard(agentUrl.url);
    return [card.name];
  }

  @override
  Future<bool> isConnected() async {
    return true;
  }

  @override
  Stream<AgentEvent?> listenToEvents() async* {}

  @override
  Stream<MessageResult> sendMessage(Conversation conversation) async* {
    var request = SendTaskRequest(
      id: '1',
      jsonrpc: '2.0',
      method: 'tasks/send',
      metadata: {},
      params: TaskSendParams(
        sessionId: conversation.conversationId,
        id: conversation.conversationId,
        metadata: {},
        message: A2AMessage(
          role: 'user',
          metadata: {},
          parts: [Part(type: 'text', text: "hello", metadata: {})],
        ),
      ),
    );

    final response = await http.post(
      agentUrl.url,
      body: jsonEncode(request.toJson()),
    );
    final data = jsonDecode(response.body) as Map<String, dynamic>;

    yield (
      messages: [
        Message(
          role: 'bot',
          content:
              data['result']['artifacts'][0]['parts'][0]['text']?.toString() ??
              'err',
          symbols: {},
        ),
      ],
      responseTime: -1.0,
      error: null,
      agent: 'test',
    );
  }

  sendTask(SendTaskRequest send) {
    final sub = SSEClient.subscribeToSSE(
      header: {},
      method: SSERequestType.POST,
      url: agentUrl.url.toString(),
      body: send.toJson(),
    ).map((event) {
      SSEClient.unsubscribeFromSSE();
      final data = jsonDecode(event.data!);
      return (
        messages: [
          Message(
            role: 'bot',
            content:
                data['artifacts'][0]['parts'][0]['text']?.toString() ?? 'err',
            symbols: {},
          ),
        ],
        responseTime: -1.0,
        error: null,
        agent: 'test',
      );
    });
    // return sub;
  }

  @override
  Future<List<Tool>> getTools() {
    return Future.value([]);
  }

  @override
  Future<String> executeTool(String name, Map<String, dynamic> parameters) {
    return Future.value("");
  }
}
