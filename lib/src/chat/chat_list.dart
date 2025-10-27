/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/message/bot_chat_message_card.dart';
import 'package:arc_view/src/chat/message/chat_message_card.dart';
import 'package:arc_view/src/chat/message/expected_chat_message_card.dart';
import 'package:arc_view/src/conversation/models/conversation_message.dart';
import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:arc_view/src/tests/notifiers/test_runs_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ChatList extends ConsumerWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final conversation = ref.watch(
      conversationsProvider.select((c) => c.current),
    );
    final testRuns = ref.read(testRunsProvider);
    final testRun = findByConversationId(conversation.conversationId, testRuns);
    final messageCards = [];

    for (final (i, message) in conversation.messages.indexed) {
      final expected = testRun?.testCase.expected.messages.elementAtOrNull(i);
      messageCards.add(_convertMessageToCard(message, expected, testRun));
    }

    if (conversation.loading == true) {
      messageCards.add(LoadingChatMessageCard().toRight());
    }

    if (messageCards.isEmpty) {
      messageCards.add(
        BotChatMessageCard(
          message: ConversationMessage(
            type: MessageType.bot,
            conversationId: conversation.conversationId,
            content: ''' 👋 Welcome to the LMOS Agents Studio (Beta): 

Here you can define, test, and refine your agents using the Agent Definition Language (ADL).

Getting started:
- Go to ADL → create a new ADL (e.g., Appointment Booking) -> [here](#/usecases)
- Return to Chat → select your ADL, start testing, and iterate.
- Check Tools → use pre-configured ones or mock new tools.
- View Events → track execution flow and debug interactions.

Start simple — create one use case, test, and iterate. You can learn ADL in under 15 minutes:

🔗 [Learn ADL](https://eclipse.dev/lmos/docs/arc/adl/adl_learn/)

You can also deploy this in your own environment and connect your models and tools in under 30 minutes:

🔗 [Run / Deploy locally or your env](https://github.com/eclipse-lmos/arc-spring-init)
''',
          ),
        ).toRight(),
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
      MessageType.user => ChatMessageCard(chatMessage: message).toLeft(),
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
}
