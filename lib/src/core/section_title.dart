/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        Icons.add_circle_outline,
        size: 12,
        color: context.colorScheme.secondary,
      ),
      HGap(),
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: context.colorScheme.secondary,
        ),
      ),
    ].row(min: true);
  }
}
