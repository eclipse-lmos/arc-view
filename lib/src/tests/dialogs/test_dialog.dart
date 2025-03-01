/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:arc_view/src/tests/models/test_case.dart';
import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

typedef TestDetails = ({
  String name,
  String description,
  String group,
});

///
/// Dialog for creating or editing Test details, such as name and description.
///
class TestDialog extends StatefulWidget {
  const TestDialog({
    super.key,
    required this.onConfirm,
    required this.title,
    this.value,
    this.actionText,
  });

  final String title;
  final TestCase? value;
  final String? actionText;
  final Function(TestDetails) onConfirm;

  @override
  TestDialogState createState() => TestDialogState();
}

class TestDialogState extends State<TestDialog> {
  final _textController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _groupController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (widget.value != null) {
      _textController.text = widget.value!.name;
      _groupController.text = widget.value!.group ?? 'default';
      _descriptionController.text = widget.value?.description ?? '';
    }
    return AlertDialog(
      title: Text(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Name',
            ),
          ),
          TextField(
            controller: _groupController,
            decoration: InputDecoration(
              hintText: 'Group',
            ),
          ),
          VGap.small(),
          ColoredBox(
            color: context.colorScheme.surface,
            child: TextField(
              controller: _descriptionController,
              maxLines: 8,
              minLines: 4,
              decoration: InputDecoration(
                hintText: 'Description',
              ),
            ).padByUnits(1, 1, 1, 1).size(width: 400),
          ),
        ],
      ).max(height: 400, width: 880),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text(widget.actionText ?? 'OK'),
          onPressed: () {
            widget.onConfirm((
              name: _textController.text,
              description: _descriptionController.text,
              group: _groupController.text,
            ));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _descriptionController.dispose();
    _groupController.dispose();
    super.dispose();
  }
}
