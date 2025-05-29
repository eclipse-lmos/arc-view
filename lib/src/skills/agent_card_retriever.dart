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
    try {
      final response = await http.get(url);
      _log.finer(response.body);
      final parsedJson = jsonDecode(response.body);
      _log.finer(parsedJson);
      return AgentCard.fromJson(parsedJson);
    } catch (e) {
      _log.severe('Error retrieving agent card: $e');
      rethrow;
    }
  }
}

@freezed
sealed class AgentCard with _$AgentCard {
  factory AgentCard({
    required String name,
    required String version,
    required String description,
    List<Skill>? skills,
    List<String>? defaultInputModes,
    List<String>? defaultOutputModes,
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
    List<String>? tags,
    List<String>? inputModes,
    List<String>? outputModes,
    List<String>? examples,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
}
