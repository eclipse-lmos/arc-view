/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/dialogs/usecase_dialog.dart';
import 'package:arc_view/src/usecases/notifiers/selected_usecase_group_notifier.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:arc_view/src/usecases/usecases_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddUseCasesButton extends ConsumerWidget {
  const AddUseCasesButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        ref
            .read(selectedUseCaseGroupNotifierProvider.notifier)
            .selectPersonal();
        _newUseCase(context, ref);
      },
    );
  }

  _newUseCase(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder:
          (context) => UseCaseDialog(
            title: 'New UseCases File',
            onConfirm: (details) {
              ref.read(useCaseFilterProvider.notifier).state = null;
              ref
                  .read(useCasesNotifierProvider.notifier)
                  .newUseCase(
                    details.name,
                    description: details.description,
                    tags: details.tags,
                  );
            },
          ),
    );
  }
}
