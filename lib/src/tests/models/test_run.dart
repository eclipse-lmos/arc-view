/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/models/conversation.dart';
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_run.freezed.dart';
part 'test_run.g.dart';

@freezed
sealed class TestRun with _$TestRun {
  factory TestRun({
    required TestCase testCase,
    bool? success,
    required Conversation conversation,
    required DateTime startedAt,
  }) = _TestRun;

  const TestRun._();

  String group() => testCase.group ?? 'default';

  factory TestRun.fromJson(Map<String, dynamic> json) =>
      _$TestRunFromJson(json);
}
