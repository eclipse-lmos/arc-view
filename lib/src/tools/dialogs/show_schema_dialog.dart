/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/client/models/tool.dart';
import 'package:arc_view/src/core/dialog_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ShowSchemaDialog extends ConsumerWidget {
  ShowSchemaDialog({required this.tool, super.key});

  final Tool tool;
  final encoder = JsonEncoder.withIndent('  ');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: DialogHeader('Tool: ${tool.name}'),
      content: ColoredBox(
        color: context.colorScheme.surface,
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: 'Parameter Schema',
            border: OutlineInputBorder(borderRadius: BorderRadius.zero),
          ),
          child: encoder
              .convert(jsonDecode(tool.parameterSchema))
              .txt
              .padByUnits(1, 0, 1, 0)
              .size(width: 600),
        ),
      ),
    );
  }
}
