/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agent_client_notifier.dart';
import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/tools/dialogs/show_schema_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

///
/// Main screen for tools/functions.
///

class ToolsScreen extends ConsumerWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(agentClientNotifierProvider);

    return Scaffold(
      appBar: AppBarTitle('Tools'),
      body: FutureBuilder(
        future: client.getTools(),
        builder: (context, snapshot) {
          final tools = snapshot.data ?? [];

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError || tools.isEmpty) {
            return Center(child: 'Tools cannot be loaded for this Agent.'.txt);
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'The following Tools are available.'.txt.padByUnits(2, 1, 2, 1),
              SingleChildScrollView(
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    for (final tool in tools)
                      Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tool: ${tool.name}',
                              style: TextStyle(
                                color: context.colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Divider(),
                            VGap(),
                            tool.description.txt,
                            VGap.small(),
                            VGap(),
                            if (tool.parameters.isNotEmpty)
                              SectionTitle(text: 'Parameters'),
                            //  if (tool.parameters.isNotEmpty) Divider(),
                            VGap(),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  for (final param in tool.parameters)
                                    RichText(
                                      text: TextSpan(
                                        text: '- ${param.name}',
                                        style: DefaultTextStyle.of(
                                          context,
                                        ).style.copyWith(
                                          color: context.colorScheme.secondary,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' (${param.type}): ',
                                            style: DefaultTextStyle.of(
                                              context,
                                            ).style.copyWith(
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                          TextSpan(
                                            text: param.description,
                                            style: DefaultTextStyle.of(
                                              context,
                                            ).style.copyWith(
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => ShowSchemaDialog(tool: tool),
                                );
                              },
                              child: 'Show Schema'.txt,
                            ).toRight(),
                          ],
                        ).padByUnits(2, 2, 2, 2),
                      ).size(width: 460, height: 320),
                  ],
                ),
              ).expand(),
            ],
          ).padByUnits(0, 3, 0, 3);
        },
      ),
    );
  }
}
