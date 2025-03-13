/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/toolbar/agent_tabs.dart';
import 'package:arc_view/src/client/notifiers/agent_url_notifier.dart';
import 'package:arc_view/src/settings/dialogs/edit_agent_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ToolBar extends ConsumerWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final agentUrl = ref.watch(agentUrlNotifierProvider);
    final textColor = context.colorScheme.onSurface.withOpacity(0.5);
    return Row(
      children: [
        const AgentTabs().padByUnits(0, 0, 0, 1),
        Spacer(),
        'connected to'.style(color: textColor),
        agentUrl.url.toString().onPressed(() {
          showEditAgentUrl(context, ref);
        }),
        HGap(),
        HGap(),
      ],
    );
  }
}
