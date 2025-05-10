/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agent_client_notifier.dart';
import 'package:arc_view/src/client/notifiers/agent_url_notifier.dart';
import 'package:arc_view/src/client/oneai_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'agents_notifier.g.dart';

typedef Agents = ({String? activated, List<AgentDetails> names});
typedef AgentDetails = ({String name, Uri url});

@riverpod
class AgentsNotifier extends _$AgentsNotifier {
  @override
  Future<Agents> build() async {
    final client = ref.watch(agentClientNotifierProvider);
    final agents = await client.getAgents();
    final List<AgentDetails> agentDetails =
        agents.map((a) => (name: a, url: client.agentUrl.url)).toList();
    final activated = client.agentUrl.agent;
    return (activated: activated, names: agentDetails);
  }

  setActivated(String activated, List<AgentDetails> agentDetails) {
    state = AsyncData((activated: activated, names: agentDetails));
    ref.read(agentUrlNotifierProvider.notifier).setAgent(activated);
  }

  Future<Agents> checkUrl(String url) async {
    try {
      final agentUrl = Uri.parse(url);
      final client = OneAIClient((
        url: agentUrl,
        agent: null,
        secure: agentUrl.isScheme('https'),
      ));
      final agents = await client.getAgents();
      final List<AgentDetails> agentDetails =
          agents.map((a) => (name: a, url: client.agentUrl.url)).toList();
      client.close();
      return (activated: null, names: agentDetails);
    } catch (_) {
      return (activated: null, names: <AgentDetails>[]);
    }
  }

  refresh() async {
    state = AsyncData(await build());
  }
}

/// Extensions for the AgentsNotifier.
extension AgentsNotifierExtension on WidgetRef {
  activateAgent(String activated, List<AgentDetails> agentDetails) {
    read(agentsNotifierProvider.notifier).setActivated(activated, agentDetails);
  }

  refreshAgents() {
    read(agentsNotifierProvider.notifier).refresh();
  }
}
