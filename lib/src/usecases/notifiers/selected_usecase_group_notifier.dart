/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/models/use_case_group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_usecase_group_notifier.g.dart';

///
/// Manages the selected use case group.
///
@riverpod
class SelectedUseCaseGroupNotifier extends _$SelectedUseCaseGroupNotifier {
  @override
  String build() {
    return personalUseCaseGroupId;
  }

  setSelected(String groupId) {
    state = groupId;
  }

  selectPersonal() {
    state = personalUseCaseGroupId;
  }
}
