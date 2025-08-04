/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smiles/smiles.dart';

class PromptView extends StatelessWidget {
  const PromptView(this.prompt, {super.key});

  final String prompt;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        children: [
          'System Prompt'.txt,
          SecondaryButton(
            description: 'Copy text',
            onPressed: () {
              Clipboard.setData(ClipboardData(text: prompt));
            },
            icon: Icons.copy,
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, color: context.colorScheme.onSurface),
          ),
        ],
      ),
      children: [
        ColoredBox(
          color: context.colorScheme.surface,
          child: prompt.txt.padByUnits(3, 3, 3, 3),
        ).padByUnits(2, 2, 2, 2),
      ],
    );
  }
}
