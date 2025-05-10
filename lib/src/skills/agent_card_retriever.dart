/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

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

class AgentCard {
  AgentCard({
    required this.name,
    required this.version,
    required this.description,
    required this.skills,
  });

  final String name;
  final String description;
  final String version;
  final List<Skill> skills;

  factory AgentCard.fromJson(Map<String, dynamic> data) {
    final name = data['name'] ?? '';
    final description = data['description'] ?? '';
    final version = data['version'] ?? '';
    final skills = data['skills'] as List<dynamic>?;
    return AgentCard(
      name: name,
      version: version,
      skills:
          skills
              ?.map((skill) => Skill.fromJson(skill as Map<String, dynamic>))
              .toList() ??
          [],
      description: description,
    );
  }
}

class Skill {
  Skill({
    required this.name,
    required this.id,
    required this.description,
    required this.tags,
    required this.inputModes,
    required this.outputModes,
    required this.examples,
  });

  final String name;
  final String description;
  final String id;
  final List<String> tags;
  final List<String> inputModes;
  final List<String> outputModes;
  final List<String> examples;

  factory Skill.fromJson(Map<String, dynamic> data) {
    final name = data['name'];
    final description = data['description'];
    final id = data['id'];
    final tags = data['tags'];
    final inputModes = data['inputModes'];
    final outputModes = data['outputModes'];
    final examples = data['examples'];
    return Skill(
      name: name,
      id: id,
      description: description,
      tags: tags,
      inputModes: inputModes,
      outputModes: outputModes,
      examples: examples,
    );
  }
}
