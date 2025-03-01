/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class CompletionChart extends StatefulWidget {
  const CompletionChart({
    super.key,
    required this.runs,
  });

  final List<TestRun> runs;

  @override
  State<CompletionChart> createState() => _CompletionChartState();
}

class _CompletionChartState extends State<CompletionChart> {
  @override
  Widget build(BuildContext context) {
    final testRuns = widget.runs;
    final successfulRuns = widget.runs.where((r) => r.success != false).length;
    final successRate = (successfulRuns / testRuns.length) * 100;

    return Consumer(
      builder: (context, ref, _) => Card(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                '${testRuns.length}'.style(size: 45),
                'Number of tests'.h3,
              ],
            ),
            HGap.medium(),
            PieChart(
              PieChartData(
                sections: [
                  if (testRuns.isNotEmpty)
                    PieChartSectionData(
                      color: Colors.green[900] ?? Colors.green,
                      value: successRate,
                      title: '$successRate%',
                      radius: successRate,
                    ),
                  if (testRuns.isNotEmpty)
                    PieChartSectionData(
                      color: Colors.red[900] ?? Colors.red,
                      value: 100 - successRate,
                      title: '${100 - successRate}%',
                      radius: 100 - successRate,
                    ),
                  if (!testRuns.isNotEmpty)
                    PieChartSectionData(
                      color: context.colorScheme.secondaryContainer,
                      value: 100,
                      title: 'No Runs',
                      radius: 100,
                    ),
                ],
              ),
              duration: Duration(milliseconds: 150), // Optional
              curve: Curves.linear, // Optional
            ).size(width: 150),
            HGap.medium(),
            Column(
              spacing: 8,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                'Success tests: $successfulRuns'.txt,
                'Failed tests: ${testRuns.length - successfulRuns}'.txt,
              ],
            ),
          ],
        ).padByUnits(2, 2, 2, 2),
      ).toLeft(),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
