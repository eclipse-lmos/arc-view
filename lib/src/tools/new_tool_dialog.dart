/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:arc_view/src/tools/models/test_tool.dart';
import 'package:arc_view/src/tools/notifiers/tools_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class NewToolDialog extends StatefulWidget {
  const NewToolDialog({super.key, this.tool});

  final TestTool? tool;

  @override
  _NewToolDialogState createState() => _NewToolDialogState();
}

class _NewToolDialogState extends State<NewToolDialog> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _valueController = TextEditingController();
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (widget.tool != null) {
      _nameController.text = widget.tool!.name;
      _descriptionController.text = widget.tool!.description;
      _valueController.text = widget.tool!.value;
      _titleController.text = widget.tool!.title;
    }

    return AlertDialog(
      title: (widget.tool != null)
          ? 'Edit Test Tool'.txt
          : 'Add New Test Tool'.txt,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(
              hintText: 'Tool Title (For display only)',
            ),
          ),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Tool Name (Example: get_bill)',
            ),
          ),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
              hintText: 'Tool Description',
            ),
          ),
          VGap.small(),
          ColoredBox(
            color: context.colorScheme.surface,
            child: TextField(
              controller: _valueController,
              maxLines: 32,
              minLines: 16,
            ).padByUnits(1, 1, 1, 1),
          ),
        ],
      ).min(height: 400, width: 880),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        Consumer(
          builder: (context, ref, child) => TextButton(
            child: 'OK'.txt,
            onPressed: () {
              if (_nameController.text.isEmpty) return;
              if (_descriptionController.text.isEmpty) return;
              if (_titleController.text.isEmpty) return;
              if (_valueController.text.isEmpty) return;

              if (widget.tool != null) {
                ref.read(toolsNotifierProvider.notifier).updateTool(
                      widget.tool!.copyWith(
                        name: _nameController.text,
                        title: _titleController.text,
                        description: _descriptionController.text,
                        value: _valueController.text,
                      ),
                    );
                Navigator.of(context).pop();
                return;
              }

              ref.read(toolsNotifierProvider.notifier).newTool(
                    TestTool(
                      id: '${_nameController.text}-${DateTime.now().millisecondsSinceEpoch.toString()}',
                      name: _nameController.text,
                      title: _titleController.text,
                      description: _descriptionController.text,
                      value: _valueController.text,
                    ),
                  );
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _valueController.dispose();
    _titleController.dispose();
    super.dispose();
  }
}
