/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/dialogs/apply_usecase_dialog.dart';
import 'package:arc_view/src/chat/notifiers/selected_usecase_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

class ApplyUseCaseButton extends ConsumerWidget {
  const ApplyUseCaseButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedUseCase = ref.watch(selectedUsecaseNotifierProvider);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: [
        SecondaryButton(
          description: 'Apply Use Cases',
          onPressed: () {
            showDialog(context: context, builder: (_) => ApplyUsecaseDialog());
          },
          icon: Icons.import_contacts,
        ),
        if (selectedUseCase == null)
          'No Use Case selected'.txt.padByUnits(0, 2, 0, 0),
        if (selectedUseCase != null) ...[
          selectedUseCase.name.onPressed(() {
            context.push('/edit_usecase/${selectedUseCase.id}');
          }).padByUnits(0, 2, 0, 0),
          SecondaryButton(
            description: 'Remove Use Case',
            icon: Icons.close,
            onPressed: () {
              ref.read(selectedUsecaseNotifierProvider.notifier).remove();
            },
          )
        ],
      ].row(),
    );
  }
}
