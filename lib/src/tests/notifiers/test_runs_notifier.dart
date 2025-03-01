/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:arc_view/src/tests/models/test_run.dart';
import 'package:arc_view/src/tools/models/test_tool.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_runs_notifier.g.dart';

///
/// Manages the test cases.
///
@Riverpod(keepAlive: true)
class TestRunsNotifier extends _$TestRunsNotifier {
  final _log = Logger('TestCasesNotifier');

  @override
  Map<String, Map<String, TestRun>> build() {
    return {};
  }

  Future<bool> runTestCase(
    TestCase testCase, {
    UseCase? useCase,
    Set<TestTool>? tools,
  }) async {
    final cid = 'testrun-cid-${DateTime.now().millisecondsSinceEpoch}';
    final result =
        await ref.read(conversationsNotifierProvider.notifier).replay(
              replay: testCase.expected,
              conversationId: cid,
              useCase: useCase,
              addExpectedMessage: true,
            );
    var failed = result.messages
            .map((message) => message.symbols?.contains('NOT_EXPECTED') == true)
            .toSet()
            .contains(true) ==
        true;

    final group = testCase.group ?? 'default';
    final testRun = TestRun(
      testCase: testCase,
      conversation: result,
      success: !failed,
      startedAt: DateTime.now(),
    );
    final groupRuns = (state[group] ?? {});
    state = {
      ...state,
      group: {...groupRuns, testCase.ensureId(): testRun}
    };
    _log.fine('Test run result: ${!failed}');
    return !failed;
  }
}

///
/// Find a test run by conversation id.
///
TestRun? findByConversationId(
    String conversationId, Map<String, Map<String, TestRun>> testRuns) {
  for (final runGroup in testRuns.values) {
    for (final runs in runGroup.values) {
      if (runs.conversation.conversationId == conversationId) {
        return runs;
      }
    }
  }
  return null;
}
