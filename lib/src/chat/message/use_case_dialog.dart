import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

class UseCaseDialog extends StatelessWidget {
  const UseCaseDialog(this.useCase, {super.key, required this.name});

  final UseCase useCase;
  final String name;

  @override
  Widget build(BuildContext context) {
    final String content =
        useCase
            .splitContent()
            .findFirst((c) => c.$1 == ' UseCase: $name')
            ?.$2 ??
        useCase.content;

    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      title: DialogHeader(
        'UseCase: ${useCase.name}',
        subtitle: useCase.description ?? '',
      ),
      titlePadding: const EdgeInsets.all(0),
      content: ColoredBox(
        color: context.colorScheme.surface,
        child: content.txt.padByUnits(2, 2, 2, 2),
      ).padByUnits(2, 2, 2, 2),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
