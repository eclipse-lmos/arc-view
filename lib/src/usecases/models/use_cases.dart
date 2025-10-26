/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_cases.freezed.dart';
part 'use_cases.g.dart';

/// The characters that are not allowed in a use case name.
final useCaseNameInvalidCharacters = RegExp(r'[^a-zA-Z0-9_-]');

/// A collection of use cases where one use case can be selected.
@freezed
sealed class UseCases with _$UseCases {
  factory UseCases({required List<UseCase> cases, required int selected}) =
      _UseCases;

  UseCases._();

  UseCase? get selectedCase => (cases.isEmpty) ? null : cases[selected];

  UseCase? getById(String id) {
    return cases.where((element) => element.id == id).firstOrNull;
  }

  factory UseCases.fromJson(Map<String, dynamic> json) =>
      _$UseCasesFromJson(json);
}

@freezed
sealed class UseCase with _$UseCase {
  factory UseCase({
    required String name,
    String? id,
    required DateTime createdAt,
    required String content,
    String? description,
    List<String>? tags,
    String? version,
    bool? readOnly,
    bool? valid,
  }) = _UseCase;

  UseCase._() {
    sections.clear();
    sections.addAll(
      splitContent().where((s) => !s.$2.contains('<Version:')).toList(),
    );
    conditionals.clear();
    conditionals.addAll(
      conditionalRegex
          .allMatches(content)
          .map((e) => e.group(0) ?? '')
          .where((e) => e.isNotEmpty),
    );
    tools.clear();
    tools.addAll(
      toolsRegex
          .allMatches(content)
          .map((e) => e.group(0) ?? '')
          .where((e) => e.isNotEmpty),
    );
  }

  static final useCaseSplitRegex = RegExp(r'(?=###\s*UseCase\s*:\s*)');
  static final useCaseVersionRegex = RegExp(r'<Version:(.*)>');
  static final conditionalRegex = RegExp(r'<.*?>');
  static final toolsRegex = RegExp(r'@\w+\(\)');

  @override
  final List<(String, String)> sections = [];

  @override
  final Set<String> conditionals = {};

  @override
  final Set<String> tools = {};

  List<(String, String)> splitContent() {
    if (content.trim().isEmpty) return [];
    return content.split(useCaseSplitRegex).map((e) {
      final index = e.indexOf('\n');
      if (index == -1) return ('unknown', e);
      final name = e.substring(0, index).trim().replaceAll('#', '');
      return (name, e);
    }).toList();
  }

  UseCase duplicate() {
    return copyWith(
      name: '$name (copy)',
      id: 'uc-${DateTime.now().millisecondsSinceEpoch}-${generateHash()}',
      createdAt: DateTime.now(),
      readOnly: false,
    );
  }

  String generateHash() {
    return content.hashCode.toRadixString(16);
  }

  UseCase updateSection(String id, String content) {
    var updated = false;
    var updatedSections = sections.map((s) {
      if (s.$1.contains('UseCase: $id')) {
        updated = true;
        return (s.$1, content);
      }
      return s;
    }).toList();

    if (!updated) {
      updatedSections = [...sections, (' UseCase: $id', content)];
    }

    return UseCase(
      id: this.id,
      name: name,
      createdAt: createdAt,
      content: updatedSections.map((s) => s.$2).join('\n'),
      description: description,
      tags: tags,
      version: version,
      readOnly: readOnly,
    );
  }

  factory UseCase.fromJson(Map<String, dynamic> json) =>
      _$UseCaseFromJson(json);
}
