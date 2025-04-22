/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

class DialogHeader extends StatelessWidget {
  const DialogHeader(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return [
      title.txt,
      Spacer(),
      SecondaryButton(
        icon: Icons.close,
        description: 'Close Dialog',
        onPressed: () {
          context.pop();
        },
      ),
    ].row();
  }
}
