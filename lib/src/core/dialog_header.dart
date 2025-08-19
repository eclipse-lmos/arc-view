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
  const DialogHeader(this.title, {super.key, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colorScheme.secondaryContainer.withAlpha(50),
      child:
          Row(
            children: [
              ListTile(
                title: title.h3,
                subtitle: subtitle.isNotEmpty ? subtitle.txt : null,
                dense: true,
              ).size(height: 50, width: 350),
              const Spacer(),
              SecondaryButton(
                icon: Icons.close,
                description: 'Close Dialog',
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ).padding(),
    );
  }
}
