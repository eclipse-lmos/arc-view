/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agent_url_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/core/text_input_dialog.dart';
import 'package:arc_view/src/settings/notifiers/env_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class EnvWrap extends StatelessWidget {
  const EnvWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final active = ref.watch(agentUrlNotifierProvider.select((a) => a.url));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(text: 'Available Agent Urls').padByUnits(1, 1, 1, 1),
            Wrap(
              runSpacing: 1,
              children: [
                SecondaryButton(
                  icon: Icons.add,
                  description: 'Add and set new Agent Url',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => TextInputDialog(
                        title: 'New Agent Url',
                        hintText: 'https://myagent.com',
                        onConfirm: (newName) {
                          if (newName.isEmpty) return;
                          ref.addEnv(newName);
                        },
                      ),
                    );
                  },
                ).toLeft(),
                ...ref.watch(envNotifierProvider).map((env) {
                  return [
                    if (active.toString() != env)
                      SecondaryButton(
                          icon: Icons.check_box_outline_blank_sharp,
                          description: 'Set $env as active',
                          onPressed: () {
                            ref
                                .read(agentUrlNotifierProvider.notifier)
                                .setUrl(env);
                          }),
                    if (active.toString() == env)
                      Icon(Icons.check, size: 16, color: Colors.green)
                          .padding(),
                    env.txt,
                    SecondaryButton(
                      icon: Icons.clear,
                      description: 'Delete $env as Favorite',
                      onPressed: () {
                        ref.removeEnv(env);
                      },
                    )
                  ].row(min: true);
                })
              ],
            ).padByUnits(0, 0, 0, 1),
          ],
        );
      },
    );
  }
}
