/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/metrics/charts/data_chart.dart';
import 'package:arc_view/src/metrics/models/metrics.dart';
import 'package:arc_view/src/metrics/notifiers/agent_metrics_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AgentDurationChart extends ConsumerWidget {
  const AgentDurationChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metrics = ref.watch(agentMetricsNotifierProvider).valueOrNull;
    return DataChart(
      title: 'Agent Timing',
      axisName: 'Seconds',
      metrics: metrics ?? const [],
      plotType: PlotType.agentDuration,
      defaultChartType: ChartType.line,
    );
  }
}