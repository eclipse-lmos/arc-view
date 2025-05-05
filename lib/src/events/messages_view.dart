/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

class MessagesView extends StatelessWidget {
  const MessagesView(this.messages, {super.key});

  final List<dynamic> messages;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        children: [
          'Messages'.txt.expand(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, color: context.colorScheme.onSurface),
          ),
        ],
      ),
      children:
          messages
              .map(
                (m) => Card(
                  child: m.toString().txt.padByUnits(2, 2, 2, 2),
                ).padByUnits(1, 1, 1, 1),
              )
              .toList(),
    );
  }
}
