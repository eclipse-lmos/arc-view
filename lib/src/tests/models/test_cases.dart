/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_cases.freezed.dart';
part 'test_cases.g.dart';

@freezed
sealed class TestCases with _$TestCases {
  factory TestCases({required List<TestCase> testCases}) = _TestCases;

  const TestCases._();

  TestCase? getTestCase(String conversationId) {
    for (final testCase in testCases) {
      if (testCase.expected.conversationId == conversationId) {
        return testCase;
      }
    }
    return null;
  }

  factory TestCases.fromJson(Map<String, dynamic> json) =>
      _$TestCasesFromJson(json);
}
