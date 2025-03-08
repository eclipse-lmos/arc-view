/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/client/models/system_context.dart';
import 'package:arc_view/src/client/models/user_context.dart';
import 'package:arc_view/src/conversation/models/conversation_message.dart';
import 'package:arc_view/src/tools/models/test_tool.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
class Conversation with _$Conversation {
  factory Conversation({
    required List<ConversationMessage> messages,
    required UserContext userContext,
    required SystemContext systemContext,
    required String conversationId,
    required DateTime createdAt,
    String? name,
    bool? loading,
  }) = _Conversation;

  const Conversation._();

  Conversation add(
    List<ConversationMessage> newMessages, {
    bool? loading,
  }) {
    return copyWith(loading: loading, messages: [...messages, ...newMessages]);
  }

  Conversation addUserMessage(
    String content, {
    required bool loading,
    bool? streamAudio,
  }) {
    return copyWith(
      loading: loading,
      messages: [
        ...messages,
        ConversationMessage(
          type: MessageType.user,
          conversationId: conversationId,
          content: content,
          binaryData: streamAudio == true
              ? [BinaryData(source: 'STREAM_SOURCE', mimeType: 'audio/pcm')]
              : null,
        ),
      ],
    );
  }

  Conversation addSystem(List<SystemContextEntry> systemEntries) {
    if (systemEntries.isEmpty) return this;
    final keys = systemEntries.map((e) => e.key).toSet();
    return copyWith(
      systemContext: systemContext.copyWith(
        entries: [
          ...systemContext.entries.where((e) => !keys.contains(e.key)),
          ...systemEntries
        ],
      ),
    );
  }

  Conversation addUseCase(UseCase? useCase) {
    if (useCase == null) return this;
    final systemEntries = [
      (key: 'usecase', value: useCase.content),
      (key: 'usecaseName', value: useCase.name),
    ];
    return addSystem(systemEntries);
  }

  Conversation addExpectedMessage(String? expectedMessage) {
    if (expectedMessage == null) return this;
    final systemEntries = [
      (key: 'expectedMessage', value: expectedMessage),
    ];
    return addSystem(systemEntries);
  }

  Conversation addTools(Set<TestTool>? tools) {
    if (tools == null) return this;
    final systemEntries = tools
        .map(
          (tool) => (
            key: 'function_${tool.name}',
            value: jsonEncode(tool.toJson()),
          ),
        )
        .toList();
    return addSystem(systemEntries);
  }

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}
