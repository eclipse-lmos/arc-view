/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/events/events_list.dart';
import 'package:arc_view/src/events/notifiers/agent_events_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

class EventsPanel extends ConsumerWidget {
  const EventsPanel({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                description: 'Show Charts',
                onPressed: () {
                  context.push("/charts");
                },
                icon: Icons.bar_chart,
              ),
              SecondaryButton(
                description: 'Reset Events',
                onPressed: () {
                  ref.read(agentEventsNotifierProvider.notifier).reset();
                },
                icon: Icons.delete,
              ),
            ],
          ),
          EventsList().expand()
        ],
      ),
    );
  }
}
