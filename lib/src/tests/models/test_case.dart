/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/models/conversation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_case.freezed.dart';
part 'test_case.g.dart';

@freezed
sealed class TestCase with _$TestCase {
  factory TestCase({
    required String name,
    String? id,
    required DateTime createdAt,
    required Conversation expected,
    String? description,
    String? group,
    bool? lastRunSuccess,
    DateTime? lastRunAt,
  }) = _TestCase;

  const TestCase._();

  String ensureId() => id ?? '${expected.conversationId}-$createdAt';

  factory TestCase.fromJson(Map<String, dynamic> json) =>
      _$TestCaseFromJson(json);
}
