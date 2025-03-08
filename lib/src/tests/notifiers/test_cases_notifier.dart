/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/notifiers/selected_usecase_notifier.dart';
import 'package:arc_view/src/conversation/models/conversation.dart';
import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:arc_view/src/tests/models/test_cases.dart';
import 'package:arc_view/src/tests/notifiers/test_runs_notifier.dart';
import 'package:arc_view/src/tests/repositories/testcases_repository.dart';
import 'package:arc_view/src/tools/notifiers/selected_tool_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smiles/smiles.dart';

part 'test_cases_notifier.g.dart';

///
/// Manages the test cases.
///
@Riverpod(keepAlive: true)
class TestCasesNotifier extends _$TestCasesNotifier {
  final _log = Logger('TestCasesNotifier');

  @override
  TestCases build() {
    final cases = ref.read(testCasesRepositoryProvider).fetch();
    return TestCases(testCases: cases);
  }

  storeConversationAsTest(
    String name,
    Conversation conversation, {
    String? description,
    String? group,
  }) {
    if (conversation.messages.isEmpty) return;
    state = state.copyWith(testCases: [
      ...state.testCases,
      TestCase(
        name: name.isEmpty ? 'Test ${state.testCases.length + 1}' : name,
        createdAt: DateTime.now(),
        description: description,
        group: group,
        expected: conversation.copyWith(name: 'Test: $name'),
      ),
    ]);
    ref.read(testCasesRepositoryProvider).save(state);
  }

  deleteTestCase(TestCase testCase) {
    state = state.copyWith(
      testCases: state.testCases
          .where((e) => e.ensureId() != testCase.ensureId())
          .toList(),
    );
    ref.read(testCasesRepositoryProvider).save(state);
  }

  void addTestCases(TestCases testCases) {
    state = state.copyWith(
      testCases: [...state.testCases, ...testCases.testCases],
    );
    ref.read(testCasesRepositoryProvider).save(state);
  }
}

extension TestCasesNotifierExtension on WidgetRef {
  Future<bool> runTestCaseWithUseCases(TestCase testCase) {
    final useCases = read(selectedUsecaseNotifierProvider);
    final selectedTools = read(selectedToolNotifierProvider);
    return read(testRunsNotifierProvider.notifier).runTestCase(
      testCase,
      useCase: useCases,
      tools: selectedTools,
    );
  }

  deleteTestCase(TestCase testCase) {
    read(testCasesNotifierProvider.notifier).deleteTestCase(testCase);
  }

  storeConversationAsTest(
    String name, {
    String? description,
    String? group,
    Conversation? conversation,
  }) {
    read(testCasesNotifierProvider.notifier).storeConversationAsTest(
      name,
      conversation ?? read(conversationsNotifierProvider).current,
      description: description,
      group: group,
    );
  }
}

///
/// Shows a notification after a test run.
///
showTestNotification(BuildContext context, bool successful) {
  final snackBar = SnackBar(
    backgroundColor:
        successful ? Colors.green[900] : Theme.of(context).colorScheme.error,
    content: successful
        ? [Icon(Icons.check_circle), HGap(), 'Test passed'.txt].row(min: true)
        : [Icon(Icons.dangerous), HGap(), 'Test failed'.txt].row(min: true),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
