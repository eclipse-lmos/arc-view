/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/models/use_case_group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecase_groups_notifier.g.dart';

///
/// Manages the creation and editing of Use Cases files.
///
@riverpod
class UseCaseGroupsNotifier extends _$UseCaseGroupsNotifier {
  @override
  Future<List<UseCaseGroup>> build() async {
    return [
      UseCaseGroup(
        id: personalUseCaseGroupId,
        name: 'Personal',
        description: 'Local storage',
        primary: true,
      ),
    ];
  }
}
