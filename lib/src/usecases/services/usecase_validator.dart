/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_validator.freezed.dart';
part 'usecase_validator.g.dart';

@riverpod
UseCaseValidator useCaseValidator(Ref ref) {
  final base = Uri.base;
  final url = base.isScheme('httpx') || base.isScheme('httpsx')
      ? '${base.scheme}://${base.host}:${base.port}/arc/usecases'
      : 'http://localhost:8090/arc/usecases';
  return UseCaseValidator(Uri.parse(url));
}

class UseCaseValidator {
  UseCaseValidator(this.url);

  final Uri url;

  Future<UseCaseValidationResult> validate(UseCase useCase) async {
    final response = await http.post(url, body: useCase.content);
    final result = UseCaseValidationResult.fromJson(jsonDecode(response.body));
    return result;
  }
}

@freezed
sealed class UseCaseValidationResult with _$UseCaseValidationResult {
  factory UseCaseValidationResult({
    required List<UseCaseValidationError> errors,
  }) = _UseCaseValidationResult;

  const UseCaseValidationResult._();

  factory UseCaseValidationResult.fromJson(Map<String, dynamic> json) =>
      _$UseCaseValidationResultFromJson(json);
}

@freezed
sealed class UseCaseValidationError with _$UseCaseValidationError {
  factory UseCaseValidationError({
    required String code,
    required String message,
  }) = _UseCaseValidationError;

  const UseCaseValidationError._();

  factory UseCaseValidationError.fromJson(Map<String, dynamic> json) =>
      _$UseCaseValidationErrorFromJson(json);
}
