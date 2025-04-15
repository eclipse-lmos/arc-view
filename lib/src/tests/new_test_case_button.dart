/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/layout/notifiers/notification_notifier.dart';
import 'package:arc_view/src/tests/dialogs/test_dialog.dart';
import 'package:arc_view/src/tests/notifiers/test_cases_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewTestCaseButton extends ConsumerWidget {
  const NewTestCaseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentConversation = ref.watch(
      conversationsNotifierProvider.select((c) => c.current),
    );
    return SecondaryButton(
      enabled: currentConversation.messages.isNotEmpty,
      description: 'Add conversation as Test Case',
      onPressed: () async {
        showDialog(
          context: context,
          builder:
              (context) => TestDialog(
                title: 'New Test Case',
                onConfirm: (details) {
                  ref.storeConversationAsTest(
                    details.name,
                    conversation: currentConversation,
                    description: details.description,
                    group: details.group,
                  );
                  context.notify(
                    'Test ${details.name} added. Goto [Tests](#/tests) to view.',
                  );
                },
              ),
        );
      },
      icon: Icons.add,
    );
  }
}
