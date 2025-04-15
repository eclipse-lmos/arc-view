/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/usecases/buttons/add_usecases_button.dart';
import 'package:arc_view/src/usecases/buttons/import_usecases_button.dart';
import 'package:arc_view/src/usecases/buttons/usecase_group_button.dart';
import 'package:arc_view/src/usecases/notifiers/usecase_groups_notifier.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:arc_view/src/usecases/usecase_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

final useCaseFilterProvider = StateProvider((ref) => "");

///
/// Main screen for managing UseCases.
///
class UseCasesScreen extends StatelessWidget {
  const UseCasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle('Use Cases'),
      floatingActionButton: [
        ImportUseCasesButton(),
        HGap.small(),
        AddUseCasesButton(),
      ].row(min: true),
      body: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VGap.small(),
          Consumer(
            builder: (context, ref, _) {
              final groups =
                  ref.watch(useCaseGroupsNotifierProvider).valueOrNull ?? [];
              return Row(
                spacing: 16,
                children: [
                  for (final group in groups) UseCaseGroupButton(group: group),
                ],
              );
            },
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Consumer(
                builder: (context, ref, _) {
                  final cases =
                      ref.watch(useCasesNotifierProvider).valueOrNull?.cases ??
                      [];
                  Set<String> tags =
                      cases.expand((u) => u.tags ?? <String>[]).toSet();
                  final currentFilter = ref.watch(useCaseFilterProvider);
                  return <Widget>[
                    for (final t in tags)
                      t.onButtonPressed(disabled: currentFilter == t, () {
                        ref.read(useCaseFilterProvider.notifier).state = t;
                      }),
                    'Clear Filter $currentFilter'.onButtonPressed(
                      disabled: tags.isEmpty || currentFilter.isEmpty,
                      () {
                        ref.read(useCaseFilterProvider.notifier).state = "";
                      },
                    ),
                  ].wrap(spacing: 8);
                },
              ),
            ],
          ),
          UseCaseTable().expand(),
        ],
      ).padByUnits(0, 3, 0, 3).size(width: double.infinity),
    );
  }
}
