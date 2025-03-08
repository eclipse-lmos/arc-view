/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agents_notifier.dart';
import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/layout/notifiers/notification_notifier.dart';
import 'package:arc_view/src/tests/completion_chart.dart';
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:arc_view/src/tests/notifiers/test_cases_notifier.dart';
import 'package:arc_view/src/tests/notifiers/test_runs_notifier.dart';
import 'package:arc_view/src/usecases/buttons/apply_use_case_button.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smiles/smiles.dart';

const _columnSizes = <double>[240, 300, 180, 180, 220];

class TestsTable extends ConsumerWidget {
  const TestsTable({
    required this.group,
    required this.testCases,
    super.key,
  });

  final String group;
  final List<TestCase> testCases;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final largeScreen = screenWidth > 1400;
    final smallScreen = screenWidth < 1200;
    final testRuns =
        ref.watch(testRunsNotifierProvider.select((runs) => runs[group]));

    return SingleChildScrollView(
      child: _createTable(
        group,
        testCases,
        testRuns,
        context,
        ref,
        smallScreen,
      ).padByUnits(0, 0, 4, 0),
    );
  }

  Widget _createTable(
    String groupName,
    List<TestCase> testCases,
    Map<String, TestRun>? testRuns,
    BuildContext context,
    WidgetRef ref,
    bool smallScreen,
  ) {
    final agentsAvailable = _agentAvailable(ref);
    return Column(
      children: [
        // SectionTitle(text: groupName).toLeft().padByUnits(1, 1, 1, 1),
        VGap.small(),
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CompletionChart(runs: testRuns?.values.toList() ?? List.empty())
              .size(height: 200),
          HGap.small(),
          ApplyUseCaseButton(),
          Spacer(),
          'Run All'.onButtonPressed(
            () async {
              for (final testCase in testCases) {
                ref
                    .read(notificationNotifierProvider.notifier)
                    .notify('Running ${testCase.name}...');
                await ref.runTestCaseWithUseCases(testCase);
              }
              ref
                  .read(notificationNotifierProvider.notifier)
                  .notify('Tests finished');
            },
            disabled: !agentsAvailable,
          ).padding(),
        ]),
        VGap.small(),
        Card(
          child: DataTable(
            showCheckboxColumn: false,
            headingRowHeight: 40,
            headingRowColor: WidgetStateColor.resolveWith(
              (states) => context.colorScheme.surfaceContainer,
            ),
            columns: [
              DataColumn(
                  numeric: false,
                  label: 'Name'.txt,
                  onSort: (columnIndex, ascending) {
                    ref
                        .read(useCasesNotifierProvider.notifier)
                        .sortByName(ascending: ascending);
                  },
                  columnWidth: FixedColumnWidth(_columnSizes[0])),
              DataColumn(
                  label: 'Description'.txt, columnWidth: FlexColumnWidth()),
              DataColumn(
                  label: 'Last Run'.txt,
                  columnWidth: FixedColumnWidth(_columnSizes[1])),
              if (!smallScreen)
                DataColumn(
                    label: 'Created At'.txt,
                    columnWidth: FixedColumnWidth(_columnSizes[2])),
              DataColumn(
                  label: 'Actions'.txt,
                  columnWidth: FixedColumnWidth(_columnSizes[3])),
            ],
            rows: [
              for (var i = 0; i < testCases.length; i++)
                _createRow(testCases[i], testRuns, context, smallScreen, ref),
            ],
          ).padding(),
        ).min(height: 500),
      ],
    );
  }

  DataRow _createRow(TestCase testCase, Map<String, TestRun>? testRuns,
      BuildContext context, bool smallScreen, WidgetRef ref) {
    final lastRun = testRuns?[testCase.ensureId()];
    return DataRow(
      onSelectChanged: (selected) {
        if (selected == true) {
          ref
              .read(conversationsNotifierProvider.notifier)
              .updateConversation(testCase.expected);
          context.go("/chat");
        }
      },
      cells: [
        DataCell(
          [
            Icon(Icons.check_circle_rounded,
                size: 16,
                color: switch (lastRun?.success) {
                  null => Theme.of(context).colorScheme.onSurface,
                  true => Colors.green[800],
                  false => Colors.red[800],
                }),
            HGap.units(2),
            testCase.name.txt,
          ].row(),
        ),
        DataCell((testCase.description ?? '').txt),
        DataCell(_getLastRun(testCase, lastRun, ref, context)),
        if (!smallScreen)
          DataCell(DateFormat.Hm().add_yMd().format(testCase.createdAt).txt),
        DataCell([
          SecondaryButton(
              icon: Icons.delete,
              confirming: true,
              description: 'Delete Test Case',
              onPressed: () {
                ref
                    .read(testCasesNotifierProvider.notifier)
                    .deleteTestCase(testCase);
              }),
        ].row()),
      ],
    );
  }

  Widget _getLastRun(TestCase testCases, TestRun? lastRun, WidgetRef ref,
      BuildContext context) {
    if (lastRun == null) return '-'.txt;
    return [
      DateFormat.Hm().add_yMd().format(lastRun.startedAt).txt,
      HGap(),
      "Open".onPressed(() {
        ref
            .read(conversationsNotifierProvider.notifier)
            .updateConversation(lastRun.conversation);
        context.go("/chat");
      })
    ].row(min: true);
  }

  _agentAvailable(WidgetRef ref) {
    final agents = ref.watch(agentsNotifierProvider);
    return agents.hasValue && agents.value?.names.isNotEmpty == true;
  }
}

Map<String, Color> tagColors = {
  'ready': Colors.teal[900] ?? Colors.teal,
  'verified': Colors.teal[900] ?? Colors.teal,
  'prod': Colors.blue[900] ?? Colors.blue,
  'live': Colors.blue[900] ?? Colors.blue,
  'test': Colors.purple[900] ?? Colors.purple,
  'broken': Colors.red[900] ?? Colors.red,
};

class UseCaseTags extends StatefulWidget {
  const UseCaseTags({super.key, required this.useCase});

  final UseCase useCase;

  @override
  State<UseCaseTags> createState() => _UseCaseTagsState();
}

class _UseCaseTagsState extends State<UseCaseTags> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      ...(widget.useCase.tags
              ?.map((t) => Container(
                    decoration: BoxDecoration(
                      color:
                          tagColors[t] ?? context.colorScheme.surfaceContainer,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: t.txt.padByUnits(0, 1, 0, 1),
                  ))
              .toList() ??
          []),
    ].wrap(spacing: 8);
  }
}
