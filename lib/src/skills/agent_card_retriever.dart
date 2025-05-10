/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

part 'agent_card_retriever.freezed.dart';

part 'agent_card_retriever.g.dart';

class AgentCardRetriever {
  final _log = Logger('AgentCardRetriever');

  Future<AgentCard> getAgentCard(Uri agentUrl) async {
    final url = Uri(
      scheme: agentUrl.scheme,
      host: agentUrl.host,
      port: agentUrl.port,
      path: '/.well-known/agent.json',
    );
    _log.finer('Getting AgentCard: $url');
    final response = await http.get(url);
    _log.finer(response.body);
    final parsedJson = jsonDecode(response.body);
    return AgentCard.fromJson(parsedJson);
  }
}

@freezed
sealed class AgentCard with _$AgentCard {
  factory AgentCard({
    required String name,
    required String version,
    required String description,
    required List<Skill>? skills,
    required List<String>? defaultInputModes,
    required List<String>? defaultOutputModes,
  }) = _AgentCard;

  factory AgentCard.fromJson(Map<String, dynamic> json) =>
      _$AgentCardFromJson(json);
}

@freezed
sealed class Skill with _$Skill {
  factory Skill({
    required String name,
    required String id,
    required String description,
    required List<String>? tags,
    required List<String>? inputModes,
    required List<String>? outputModes,
    required List<String>? examples,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
