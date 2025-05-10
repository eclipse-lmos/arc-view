/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agents_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/skills/dialogs/agent_card_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class AgentTabs extends ConsumerWidget {
  const AgentTabs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agents = ref.watch(agentsNotifierProvider).valueOrNull;

    return Row(
      children: [
        SecondaryButton(
          description: 'Refresh Agents',
          icon: Icons.refresh,
          onPressed: () => ref.refreshAgents(),
        ),
        if (agents == null || agents.names.isEmpty)
          'No Agents found'
              .style(color: context.colorScheme.onSurface.withOpacity(0.5))
              .pad(4, 8, 4, 8),
        if (agents != null)
          for (var e in agents.names)
            [
              ((e.name == agents.activated)
                  ? Container(
                    decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withOpacity(
                        0.5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: e.name.txt.pad(4, 8, 4, 8),
                  )
                  : e.name.onPressed(() {
                    ref.activateAgent(e.name, agents.names);
                  })),
              SecondaryButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => AgentCardDialog(agentUrl: e.url),
                  );
                },
                icon: Icons.account_box_sharp,
                description: 'Display Agent Card',
              ),
            ].row(min: true),
      ],
    );
  }
}
