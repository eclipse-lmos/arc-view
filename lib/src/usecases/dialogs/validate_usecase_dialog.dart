/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecase_parser_notifier.dart';
import 'package:arc_view/src/usecases/services/usecase_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ValidateUseCaseDialog extends StatefulWidget {
  const ValidateUseCaseDialog({super.key, required this.useCase});

  final UseCase useCase;

  @override
  State<ValidateUseCaseDialog> createState() => _ValidateUseCaseDialogState();
}

class _ValidateUseCaseDialogState extends State<ValidateUseCaseDialog> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final validationResults = ref.watch(
          useCaseParserProvider(widget.useCase),
        );

        return AlertDialog(
          title: DialogHeader(
            'Use Case Validation',
            subtitle: 'Validate the Use Case for potential issues.',
          ),
          titlePadding: const EdgeInsets.all(0),
          content: ColoredBox(
            color: context.colorScheme.surface,
            child:
                (!validationResults.hasValue
                        ? 'Loading validation results...'.txt.padding()
                        : _createResult(context, validationResults.value!))
                    .min(width: 560, height: 0)
                    .padByUnits(2, 2, 2, 2)
                    .max(width: 800),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: 'Cancel'.txt,
            ),
          ],
        );
      },
    );
  }

  Widget _createResult(BuildContext context, UseCaseValidationResult result) {
    if (result.errors.isEmpty) {
      return ListTile(
        leading: Icon(Icons.check, color: Colors.green),
        subtitle: 'No validation errors found.'.txt,
        title: 'Validation Successful'.txt,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var error in result.errors)
          Card(
            child: ListTile(
              leading: Icon(Icons.error_outline, color: Colors.red),
              subtitle: error.message.trim().txt.padding(),
              title: error.code.txt,
            ),
          ),
      ],
    );
  }
}

showValidateUseCaseDialog(BuildContext context, UseCase useCase) {
  showDialog(
    context: context,
    builder: (context) {
      return ValidateUseCaseDialog(useCase: useCase);
    },
  );
}
