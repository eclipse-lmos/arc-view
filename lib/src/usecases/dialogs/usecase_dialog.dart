/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

typedef UseCaseDetails = ({String name, String description, List<String> tags});

///
/// Dialog for creating or editing UseCase details, such as name and description.
///
class UseCaseDialog extends StatefulWidget {
  const UseCaseDialog({
    super.key,
    required this.onConfirm,
    required this.title,
    this.value,
    this.actionText,
  });

  final String title;
  final UseCase? value;
  final String? actionText;
  final Function(UseCaseDetails) onConfirm;

  @override
  UseCaseDialogState createState() => UseCaseDialogState();
}

class UseCaseDialogState extends State<UseCaseDialog> {
  final _textController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagsController = TextEditingController();

  @override
  void initState() {
    if (widget.value != null) {
      _textController.text = widget.value!.name;
      _tagsController.text = widget.value!.tags?.join(',') ?? '';
      _descriptionController.text = widget.value?.description ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DialogHeader(widget.title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: 'Name'),
          ),
          TextField(
            controller: _tagsController,
            decoration: InputDecoration(hintText: 'Tags (comma separated)'),
          ),
          VGap(),
          Consumer(
            builder:
                (context, ref, _) =>
                    [
                      'ready'.onPressed(() => _addTag('ready')),
                      'verified'.onPressed(() => _addTag('verified')),
                      'prod'.onPressed(() => _addTag('prod')),
                      'live'.onPressed(() => _addTag('live')),
                      'test'.onPressed(() => _addTag('test')),
                      'broken'.onPressed(() => _addTag('broken')),
                    ].wrap().toLeft(),
          ),
          VGap.small(),
          VGap(),
          ColoredBox(
            color: context.colorScheme.surface,
            child: TextField(
              controller: _descriptionController,
              maxLines: 12,
              minLines: 8,
              decoration: InputDecoration(hintText: 'Description'),
            ).padByUnits(1, 1, 1, 1).size(width: 600),
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
              tags:
                  _tagsController.text
                      .split(',')
                      .map((e) => e.trim())
                      .where((e) => e.isNotEmpty)
                      .toSet()
                      .toList(),
            ));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  ///
  /// Adds a tag to the list of tags.
  ///
  _addTag(String tag) {
    setState(() {
      final tags =
          _tagsController.text
              .split(',')
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toSet();
      tags.add(tag);
      _tagsController.text = tags.join(',');
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _descriptionController.dispose();
    _tagsController.dispose();
    super.dispose();
  }
}
