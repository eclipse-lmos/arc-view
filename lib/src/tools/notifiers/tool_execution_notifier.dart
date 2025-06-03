/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agent_client_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tool_execution_notifier.g.dart';

///
/// Provides access to the tools provided by the agent.
///
@riverpod
class ToolExecutionNotifier extends _$ToolExecutionNotifier {
  @override
  String build() {
    return '';
  }

  executeTool(String name, Map<String, dynamic> parameters) async {
    final client = ref.read(agentClientNotifierProvider);
    state = await client.executeTool(name, parameters);
  }
}
