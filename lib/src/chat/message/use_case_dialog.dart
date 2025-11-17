import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:arc_view/src/usecases/search/syntax_text_controller.dart';
import 'package:arc_view/src/usecases/usecase_syntax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

class UseCaseDialog extends StatefulWidget {
  const UseCaseDialog({
    super.key,
    required this.useCase,
    required this.name,
    this.useCaseContent,
  });

  final UseCase useCase;
  final String? useCaseContent;
  final String name;

  @override
  State<UseCaseDialog> createState() => UseCaseDialogState();
}

class UseCaseDialogState extends State<UseCaseDialog> {
  final _textController = SyntaxTextController()..colorText(useCaseSyntax);

  @override
  Widget build(BuildContext context) {
    final String content;
    if (widget.useCaseContent != null) {
      content = widget.useCaseContent!;
    } else {
      content =
          widget.useCase.sections
              .findFirst((c) => c.$1 == ' UseCase: ${widget.name}')
              ?.$2 ??
          widget.useCase.content;
    }

    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      title: DialogHeader(
        'UseCase: ${widget.useCase.name}',
        subtitle: widget.useCase.description ?? '',
      ),
      titlePadding: const EdgeInsets.all(0),
      content: ColoredBox(
        color: context.colorScheme.surface,
        child: TextField(
          controller: _textController..text = content,
          minLines: 20,
          maxLines: null,
        ).min(width: 560, height: 0).padByUnits(2, 2, 2, 2),
      ).padByUnits(2, 2, 2, 2).max(width: 800),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
        Consumer(
          builder: (context, ref, _) => TextButton(
            onPressed: () {
              final useCaseId = widget.useCase.id;
              if (useCaseId == null) return;
              final updatedUseCase = widget.useCase.updateSection(
                widget.name,
                _textController.text,
              );
              ref.read(useCasesProvider.notifier).updateUseCase(updatedUseCase);
              context.pop();
            },
            child: Text('Save'),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
