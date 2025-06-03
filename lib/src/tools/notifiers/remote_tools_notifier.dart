/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/models/tool.dart';
import 'package:arc_view/src/client/notifiers/agent_client_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_tools_notifier.g.dart';

///
/// Provides access to the tools provided by the agent.
///
@riverpod
class RemoteToolsNotifier extends _$RemoteToolsNotifier {
  @override
  Future<List<Tool>> build() {
    final client = ref.watch(agentClientNotifierProvider);
    return client.getTools();
  }
}
