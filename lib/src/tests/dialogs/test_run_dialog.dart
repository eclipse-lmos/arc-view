/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:arc_view/src/chat/message/bot_chat_message_card.dart';
import 'package:arc_view/src/chat/message/chat_message_card.dart';
import 'package:arc_view/src/chat/message/expected_chat_message_card.dart';
import 'package:arc_view/src/conversation/models/conversation_message.dart';
import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

///
/// Dialog displaying a test run.
///
class TestRunDialog extends StatefulWidget {
  const TestRunDialog({super.key, required this.testRun});

  final TestRun testRun;

  @override
  TestRunDialogState createState() => TestRunDialogState();
}

class TestRunDialogState extends State<TestRunDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogHeader('TestCase: ${widget.testRun.testCase.name}'),
      content: Column(
        children: [
          const Divider(),
          ColoredBox(
            color: context.colorScheme.primaryContainer,
            child: buildList(context).percentOfScreen(width: 0.7, height: 0.7),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget buildList(BuildContext context) {
    final conversation = widget.testRun.conversation;
    final expectedMessages = widget.testRun.testCase.expected;
    final messageCards = [];

    for (final (i, message) in conversation.messages.indexed) {
      final expected = expectedMessages.messages.elementAtOrNull(i);
      messageCards.add(
        _convertMessageToCard(message, expected, widget.testRun),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      reverse: true,
      itemCount: messageCards.length,
      itemBuilder: (context, i) => messageCards[(messageCards.length - 1) - i],
    );
  }

  _convertMessageToCard(
    ConversationMessage message,
    ConversationMessage? expected,
    TestRun? testRun,
  ) {
    return switch (message.type) {
      MessageType.user =>
        ChatMessageCard(chatMessage: message, editMode: false).toLeft(),
      MessageType.bot =>
        expected != null
            ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ExpectedChatMessageCard(
                  message: expected,
                  success: testRun?.success,
                ).expand(),
                BotChatMessageCard(message: message).expand(),
              ],
            )
            : BotChatMessageCard(message: message).toRight(),
    };
  }

  @override
  void dispose() {
    super.dispose();
  }
}
