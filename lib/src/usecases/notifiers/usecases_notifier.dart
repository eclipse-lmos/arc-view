/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:math';

import 'package:arc_view/src/usecases/client/usecase_client.dart';
import 'package:arc_view/src/usecases/models/use_case_group.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/selected_usecase_group_notifier.dart';
import 'package:arc_view/src/usecases/repositories/usecase_repository.dart';
import 'package:arc_view/src/usecases/usecase_template.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'usecases_notifier.g.dart';

///
/// Manages the creation and editing of Use Cases files.
///
@riverpod
class UseCasesNotifier extends _$UseCasesNotifier {
  @override
  Future<UseCases> build() async {
    final useCaseGroup = ref.watch(selectedUseCaseGroupNotifierProvider);
    if (personalUseCaseGroupId == useCaseGroup) {
      final useCaseRepository = ref.read(useCaseRepositoryProvider);
      return UseCases(selected: 0, cases: useCaseRepository.fetch());
    }
    try {
      final client = UseCaseClient();
      final usecases = await client.getUseCases();
      return UseCases(selected: 0, cases: usecases);
    } catch (ex) {
      // endpoint not supported.
    }
    return UseCases(selected: 0, cases: []);
  }

  save() {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final useCaseRepository = ref.read(useCaseRepositoryProvider);
    useCaseRepository.save(useCases);
  }

  setSelected(UseCase useCase) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final index = useCases.cases.indexOf(useCase);
    state = AsyncData(useCases.copyWith(selected: index));
  }

  newUseCase(
    String name, {
    String? content,
    String? description,
    List<String>? tags,
  }) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final newUseCase = UseCase(
      id: '$name-${DateTime.now().millisecondsSinceEpoch}',
      description: description ?? '',
      tags: tags ?? [],
      name:
          name.isEmpty
              ? 'usecases'
              : name
                  .replaceAll(' ', '_')
                  .replaceAll(useCaseNameInvalidCharacters, ''),
      createdAt: DateTime.now(),
      content: content ?? useCaseTemplate,
      version: _getVersion(content),
    );
    _update([newUseCase, ...useCases.cases]);
  }

  deleteUseCaseAt(int index) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final toRemove = useCases.cases[index];
    _update(useCases.cases.where((e) => e != toRemove).toList());
  }

  deleteUseCase(UseCase toRemove) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    _update(useCases.cases.where((e) => e != toRemove).toList());
  }

  addUseCaseChapter(String id, String content) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final selected = useCases.getById(id);
    if (selected == null) return;

    final updatedUseCase = selected.copyWith(
      content: '$content\n${selected.content}',
      version: _getVersion(content),
    );
    _update(
      useCases.cases.map((e) {
        return e == selected ? updatedUseCase : e;
      }).toList(),
    );
  }

  addUseCase(UseCase newUseCase) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    _update([newUseCase, ...useCases.cases]);
  }

  updateUseCase(UseCase updatedUseCase) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    _update(
      useCases.cases.map((e) {
        return e.id == updatedUseCase.id
            ? updatedUseCase.copyWith(
              version: _getVersion(updatedUseCase.content),
            )
            : e;
      }).toList(),
    );
  }

  updateUseCaseById(String id, String text) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final selected = useCases.getById(id);
    if (selected == null) return;

    final updatedUseCase = selected.copyWith(
      content: text,
      version: _getVersion(text),
    );
    _update(
      useCases.cases.map((e) {
        return e == selected ? updatedUseCase : e;
      }).toList(),
    );
  }

  _update(List<UseCase> updatedCases) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final selected =
        useCases.selected >= updatedCases.length
            ? max(0, updatedCases.length - 1)
            : useCases.selected;
    state = AsyncData(
      useCases.copyWith(cases: updatedCases, selected: selected),
    );
    save();
  }

  void sortByName({required bool ascending}) {
    final useCases = state.valueOrNull;
    if (useCases == null) return;
    final sorted =
        useCases.cases.toList()..sort((a, b) {
          return ascending
              ? a.name.compareTo(b.name)
              : b.name.compareTo(a.name);
        });
    state = AsyncData(useCases.copyWith(cases: sorted));
  }

  String _getVersion(String? content) =>
      content == null
          ? ''
          : UseCase.useCaseVersionRegex.firstMatch(content)?.group(1) ?? '';
}
