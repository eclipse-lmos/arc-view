/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

class Tool {
  Tool({
    required this.name,
    required this.description,
    required this.parameters,
    required this.parameterSchema,
  });

  final String name;
  final String description;
  final List<ToolParameter> parameters;
  final String parameterSchema;

  factory Tool.fromJson(Map<String, dynamic> json) {
    final parametersJson =
        jsonDecode(json['parameters']) as Map<String, dynamic>;
    final parameters =
        (parametersJson['properties'] as Map<String, dynamic>)
            .map((k, v) {
              final param = {...(v as Map<String, dynamic>)};
              param['name'] = k;
              return MapEntry(k, ToolParameter.fromJson(param));
            })
            .values
            .toList();

    return Tool(
      name: json['name'] as String,
      description: json['description'] as String,
      parameterSchema: json['parameters'] as String,
      parameters: parameters,
    );
  }
}

class ToolParameter {
  ToolParameter({
    required this.name,
    required this.type,
    required this.description,
  });

  final String name;
  final String type;
  final String description;

  factory ToolParameter.fromJson(Map<String, dynamic> json) {
    return ToolParameter(
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
    );
  }
}
