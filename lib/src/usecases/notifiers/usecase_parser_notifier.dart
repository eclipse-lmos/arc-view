/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:arc_view/src/usecases/services/usecase_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_parser_notifier.g.dart';

@riverpod
class UseCaseParserNotifier extends _$UseCaseParserNotifier {
  @override
  Future<UseCaseValidationResult> build(UseCase useCase) async {
    final validationResults = await ref
        .read(useCaseValidatorProvider)
        .validate(useCase);
    ref
        .read(useCasesProvider.notifier)
        .updateUseCase(
          useCase.copyWith(valid: validationResults.errors.isEmpty),
        );
    return validationResults;
  }
}
