/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'use_case_group.freezed.dart';
part 'use_case_group.g.dart';

///
/// The group id reserved for personal use cases.
///
const String personalUseCaseGroupId = 'PERSONAL';

@freezed
sealed class UseCaseGroup with _$UseCaseGroup {
  factory UseCaseGroup({
    required String id,
    required String name,
    required bool primary,
    required String description,
    required int color,
  }) = _UseCaseGroup;

  UseCaseGroup._();

  factory UseCaseGroup.fromJson(Map<String, dynamic> json) =>
      _$UseCaseGroupFromJson(json);
}
