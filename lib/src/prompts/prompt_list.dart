/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/prompts/notifiers/current_prompt_notifier.dart';
import 'package:arc_view/src/prompts/notifiers/prompt_history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class PromptList extends ConsumerWidget {
  const PromptList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prompts =
        ref.watch(promptHistoryNotifierProvider).valueOrNull ?? List.empty();
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return SimpleDialog(
      title: Row(
        children: [
          'Prompts'.txt.expand(),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: colorScheme.onSurface,
              )),
        ],
      ),
      children: [
        const Divider(),
        SizedBox(
          height: 400,
          width: size.width * 0.8,
          child: ListView.builder(
            itemCount: prompts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  Icons.history,
                  color: colorScheme.onSurface,
                  size: 18,
                ),
                title: prompts[index].txt,
                onTap: () {
                  ref.read(currentPromptNotifierProvider.notifier).setPrompt(
                        prompts[index],
                      );
                  Navigator.pop(context);
                },
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: colorScheme.onSurface,
                    size: 18,
                  ),
                  onPressed: () {
                    ref
                        .read(promptHistoryNotifierProvider.notifier)
                        .remove(prompts[index]);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

showPromptList(BuildContext context) {
  showDialog(
      context: context, builder: (BuildContext context) => const PromptList());
}
