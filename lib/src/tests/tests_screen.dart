/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agents_notifier.dart';
import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/core/text.dart';
import 'package:arc_view/src/layout/notification_panel.dart';
import 'package:arc_view/src/tests/notifiers/test_cases_notifier.dart';
import 'package:arc_view/src/tests/services/testcases_exporter.dart';
import 'package:arc_view/src/tests/services/testcases_importer.dart';
import 'package:arc_view/src/tests/tests_table.dart';
import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

///
/// Main screen for managing testing.
///
class TestsScreen extends ConsumerWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testCases = ref.watch(testCasesNotifierProvider);
    final testGroups = groupBy(testCases.testCases, (e) => e.group);

    return Scaffold(
      appBar: AppBarTitle('Tests'),
      floatingActionButton: [
        FloatingActionButton(
          child: Icon(Icons.upload),
          onPressed: () {
            ref.read(testCasesImporterProvider).load();
          },
        ),
        if (testCases.testCases.isNotEmpty) HGap.small(),
        if (testCases.testCases.isNotEmpty)
          FloatingActionButton(
            child: Icon(Icons.download),
            onPressed: () {
              ref.read(testCasesExporterProvider).export();
            },
          ),
      ].row(min: true),
      body: Stack(
        children: [
          if (!_agentAvailable(ref))
            Positioned(
              top: 0,
              right: 16,
              child: Card(
                child: [
                  Icon(
                    Icons.warning,
                    color: Colors.amber[900],
                  ),
                  HGap.small(),
                  'At least one Agent must be connected to run Tests.'.txt,
                ].row(min: true).padByUnits(1, 2, 1, 2),
              ),
            ).animate().moveY(begin: -100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (testGroups.isEmpty)
                Card(
                  child: '''
To create a new Test Case, simply goto the [Chat](#/chat) interface, 

create a conversation and then click the "New Test" button.
                  '''
                      .markDown(context)
                      .padByUnits(2, 3, 2, 3),
                ),
              DefaultTabController(
                length: testGroups.length,
                child: Column(
                  children: [
                    HGap.small(),
                    TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      tabs: [
                        for (final group in testGroups.entries)
                          Tab(text: group.key ?? "Unknown")
                              .padByUnits(0, 2, 0, 2),
                      ],
                    ).padByUnits(0, 0, 0, 1),
                    TabBarView(
                      children: [
                        for (final group in testGroups.entries)
                          TestsTable(
                            group: group.key ?? "Unknown",
                            testCases: group.value,
                          )
                      ],
                    ).expand(),
                  ],
                ),
              ).expand(),
            ],
          ).padByUnits(2, 2, 2, 2),
          Positioned(
            top: 0,
            right: 16,
            child: NotificationPanel().size(width: 350),
          ),
        ],
      ),
    );
  }

  _agentAvailable(WidgetRef ref) {
    final agents = ref.watch(agentsNotifierProvider);
    return agents.hasValue && agents.value?.names.isNotEmpty == true;
  }
}
