/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
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
class UseCases with _$UseCases {
  factory UseCases({
    required List<UseCase> cases,
    required int selected,
  }) = _UseCases;

  UseCases._();

  UseCase? get selectedCase => (cases.isEmpty) ? null : cases[selected];

  factory UseCases.fromJson(Map<String, dynamic> json) =>
      _$UseCasesFromJson(json);
}

@freezed
class UseCase with _$UseCase {
  factory UseCase({
    required String name,
    required DateTime createdAt,
    required String content,
  }) = _UseCase;

  factory UseCase.fromJson(Map<String, dynamic> json) =>
      _$UseCaseFromJson(json);
}
