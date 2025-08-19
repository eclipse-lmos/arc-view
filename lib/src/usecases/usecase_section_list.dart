/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/hoverable_list_tile.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/usecases/dialogs/edit_usecase_dialog.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

final overviewFilterProvider = StateProvider<String?>((ref) => null);

class UseCaseSectionList extends ConsumerWidget {
  const UseCaseSectionList({
    super.key,
    required this.sections,
    required this.onSelect,
    required this.useCaseId,
  });

  final List<(String, String)> sections;
  final void Function(int, String) onSelect;
  final String useCaseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCase = ref.watch(
      useCasesNotifierProvider.select((u) => u.valueOrNull?.getById(useCaseId)),
    );
    final filter = ref.watch(overviewFilterProvider);
    final filteredSections = sections.toList();

    // Apply filter if provided
    if (filter != null) {
      filteredSections.retainWhere(
        (uc) => uc.$1.toLowerCase().contains(filter.toLowerCase()),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VGap(),
        ListView.builder(
          itemCount: filteredSections.length,
          itemBuilder:
              (context, i) => HoverableListTile(
                title:
                    '> ${filteredSections[i].$1.substringAfter(':').trim()}'
                        .txt,
                onTap: () {
                  onSelect(i, filteredSections[i].$1);
                },
                buttons: [
                  if (selectedCase?.readOnly != true)
                    SecondaryButton(
                      icon: Icons.edit,
                      description: 'Edit Use Case',
                      onPressed: () {
                        showEditUseCaseDialog(
                          context,
                          i,
                          filteredSections,
                          ref,
                          useCaseId,
                        );
                      },
                    ),
                  if (selectedCase?.readOnly != true)
                    SecondaryButton(
                      icon: Icons.delete,
                      confirming: true,
                      description: 'Delete Use Case',
                      onPressed: () {
                        _deleteUseCase(filteredSections, i, ref, useCaseId);
                      },
                    ),
                ],
              ),
        ).expand(),
      ],
    );
  }

  _deleteUseCase(
    List<(String, String)> sections,
    int sectionIndex,
    WidgetRef ref,
    String useCaseId,
  ) {
    var newText = '';
    for (var i = 0; i < sections.length; i++) {
      if (i != sectionIndex) {
        newText += '${sections[i].$2}\n';
      }
    }
    ref
        .read(useCasesNotifierProvider.notifier)
        .updateUseCaseById(useCaseId, newText);
  }
}
