/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/core/text.dart';
import 'package:arc_view/src/tests/tests_table.dart';
import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

///
/// Main screen for managing testing.
///
class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTitle('Tests'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            child: '''
Here you can execute tests locally and view the results. 

Tests are created in the Chat Screen.

Note: The Agent must support evaluation for the complete functionality.
               '''
                .markDown(context)
                .padByUnits(2, 2, 2, 2),
          ),
          VGap.small(),
          TestsTable().expand(),
        ],
      ).padByUnits(2, 2, 2, 2),
    );
  }
}
