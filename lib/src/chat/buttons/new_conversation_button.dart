/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/prompts/notifiers/current_prompt_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class NewConversationButton extends ConsumerWidget {
  const NewConversationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colorScheme.secondaryContainer,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            ),
            onPressed: () {
              ref
                  .read(conversationsNotifierProvider.notifier)
                  .newConversation();
              ref.read(currentPromptNotifierProvider.notifier).clear();
            },
            child:
                [
                  Icon(
                    Icons.edit,
                    color: context.colorScheme.onSecondaryContainer,
                  ),
                  'New Chat'
                      .style(
                        color: context.colorScheme.onSecondaryContainer,
                        size:
                            Theme.of(context).textTheme.bodySmall?.fontSize ??
                            14,
                      )
                      .padding(14),
                ].row(),
          ),
        ],
      ),
    ).tip('New Conversation');
  }
}
