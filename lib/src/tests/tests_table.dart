/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/tests/completion_chart.dart';
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:arc_view/src/tests/notifiers/test_cases_notifier.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smiles/smiles.dart';

const _columnSizes = <double>[240, 300, 180, 180, 220];

class TestsTable extends ConsumerWidget {
  const TestsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testCases = ref.watch(testCasesNotifierProvider);
    final screenWidth = MediaQuery.sizeOf(context).width;
    final largeScreen = screenWidth > 1400;
    final smallScreen = screenWidth < 1200;
    final testGroups = groupBy(testCases.testCases, (e) => e.group);
    final testRuns = groupBy(testCases.runs, (e) => e.group());

    if (testCases.testCases.isEmpty) {
      return ''.txt.pad(4, 8, 4, 8);
    }

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final group in testGroups.entries)
          _createTable(group.key ?? "", group.value, testRuns, context, ref,
                  smallScreen)
              .padByUnits(0, 0, 4, 0)
      ],
    ));
  }

  Widget _createTable(
    String groupName,
    List<TestCase> testCases,
    Map<String, List<TestRun>> testRuns,
    BuildContext context,
    WidgetRef ref,
    bool smallScreen,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTitle(text: groupName).toLeft().padByUnits(1, 1, 1, 1),
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CompletionChart(runs: testRuns[groupName] ?? List.empty())
              .size(height: 200),
          Spacer(),
          'Run All'.onButtonPressed(() {
            for (final testCase in testCases) {
              ref
                  .read(testCasesNotifierProvider.notifier)
                  .runTestCase(testCase);
            }
          })
        ]),
        HGap.medium(),
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
              if (!smallScreen)
                DataColumn(
                    label: 'Tags'.txt,
                    columnWidth: FixedColumnWidth(_columnSizes[1])),
              DataColumn(
                  label: 'Created At'.txt,
                  columnWidth: FixedColumnWidth(_columnSizes[2])),
            ],
            rows: [
              for (var i = 0; i < testCases.length; i++)
                DataRow(
                  onSelectChanged: (selected) {
                    if (selected == true) {
                      //  _gotoUseCase(testCases[i], context);
                    }
                  },
                  cells: [
                    DataCell(
                      [
                        Icon(
                          Icons.file_open_rounded,
                          size: 16,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        HGap.units(2),
                        testCases[i].name.txt,
                      ].row(),
                    ),
                    DataCell(
                      (testCases[i].description ?? '').txt,
                    ),
                    if (!smallScreen)
                      DataCell(
                        'TODO'.txt,
                      ),
                    DataCell(DateFormat.Hm()
                        .add_yMd()
                        .format(testCases[i].createdAt)
                        .txt),
                  ],
                )
            ],
          ),
        ),
      ],
    );
  }

  _gotoUseCase(UseCase useCase, BuildContext context) {
    context.push('/edit_usecase/${useCase.id}');
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
