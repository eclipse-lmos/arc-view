/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';
import 'dart:math';

import 'package:arc_view/main.dart';
import 'package:arc_view/src/client/agent_client_notifier.dart';
import 'package:arc_view/src/client/system_context.dart';
import 'package:arc_view/src/client/user_context.dart';
import 'package:arc_view/src/conversation/conversation.dart';
import 'package:arc_view/src/conversation/conversation_message.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'conversation_notifier.g.dart';

@riverpod
class ConversationNotifier extends _$ConversationNotifier {
  final _log = Logger('ConversationNotifier');

  @override
  Conversation build() {
    final userContext = loadUserContext();
    final systemContext = loadSystemContext();
    return Conversation(
      userContext: userContext,
      systemContext: systemContext,
      messages: List.empty(),
      conversationId: 'conversationId-${DateTime.now().millisecondsSinceEpoch}',
    );
  }

  UserContext loadUserContext() {
    final json = _load('conversation_user_context');
    if (json == null) return UserContext(userId: "unknown", profile: []);
    return UserContext.fromJson(jsonDecode(json));
  }

  SystemContext loadSystemContext() {
    final json = _load('conversation_system_context');
    if (json == null) {
      return SystemContext(entries: [
        (key: 'tenantId', value: 'de'),
        (key: 'channelId', value: 'web'),
      ]);
    }
    return SystemContext.fromJson(jsonDecode(json));
  }

  String? _load(String key) =>
      ref.read(sharedPreferencesProvider).getString(key);

  updateConversation(Conversation conversation) {
    final preferences = ref.read(sharedPreferencesProvider);
    preferences.setString('conversation_user_context',
        jsonEncode(conversation.userContext.toJson()));
    preferences.setString('conversation_system_context',
        jsonEncode(conversation.systemContext.toJson()));
    state = conversation;
  }

  addUserMessage(String msg) {
    final userMessage = ConversationMessage(
      type: MessageType.user,
      content: msg,
      conversationId: state.conversationId,
    );

    addMessage(userMessage);
  }

  clear() {
    state = build();
  }

  addMessage(ConversationMessage msg) async {
    state = state.copyWith(messages: [
      ...state.messages,
      msg,
      ConversationMessage(
          type: MessageType.loading,
          content: '',
          conversationId: state.conversationId),
    ]);

    final conversationClient = ref.read(agentClientNotifierProvider);

    // Remove the loading message and add the response from the server
    final response = await conversationClient.sendMessage(state);

    if (response != null && response.conversationId != state.conversationId) {
      return;
    }


    final newMessage = ConversationMessage(
      type: MessageType.bot,
      content: response.content, // Adjust based on your actual response data structure
      conversationId: state.conversationId,
      responseTime: response.responseTime, // Adjust based on your actual response data structure
    );

    final newMessages = [];
    for (final message in state.messages) {
      if (message.type != MessageType.loading) {
        newMessages.add(message);
      }
    }

    state = state.copyWith(messages: [
      ...newMessages,
      ConversationMessage(
        type: MessageType.bot,
        content: newMessage.content,
        conversationId: state.conversationId,
        responseTime: newMessage.responseTime,
      )
    ]);
  }
}
