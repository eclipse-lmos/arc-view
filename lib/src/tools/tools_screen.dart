/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/tools/dialogs/show_schema_dialog.dart';
import 'package:arc_view/src/tools/notifiers/remote_tools_notifier.dart';
import 'package:arc_view/src/tools/search_tools_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

///
/// Main screen for tools/functions.
///

final toolFilterProvider = StateProvider<String?>((ref) => null);

class ToolsScreen extends ConsumerWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBarPanel(
        Column(
          children: [
            'Tools'.h1,
            'The following Tools are available.'.txt.padByUnits(2, 1, 2, 1),
            SearchToolsPanel().percentOfScreen(width: 0.4).center(),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VGap.small(),
          Consumer(
            builder: (context, ref, _) {
              final tools = ref.watch(remoteToolsNotifierProvider);

              if (tools.isLoading) {
                return Center(child: CircularProgressIndicator());
              }

              if (tools.hasError || tools.value?.isNotEmpty != true) {
                return Center(
                  child: 'Tools cannot be loaded for this Agent.'.txt,
                );
              }

              return Consumer(
                builder: (context, ref, _) {
                  final filter = ref.watch(toolFilterProvider);
                  final filteredTools = tools.value!.toList();

                  // Apply filter if provided
                  if (filter != null) {
                    filteredTools.retainWhere(
                      (tool) => tool.name.toLowerCase().contains(
                        filter.toLowerCase(),
                      ),
                    );
                  }
                  return SingleChildScrollView(
                    child: Wrap(
                      runSpacing: 8,
                      spacing: 8,
                      children: [
                        for (final tool in filteredTools)
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      for (final param in tool.parameters)
                                        RichText(
                                          text: TextSpan(
                                            text: '- ${param.name}',
                                            style: DefaultTextStyle.of(
                                              context,
                                            ).style.copyWith(
                                              color:
                                                  context.colorScheme.secondary,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder:
                                              (_) =>
                                                  ShowSchemaDialog(tool: tool),
                                        );
                                      },
                                      child: 'Show Schema'.txt,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        context.push('/tool/${tool.name}');
                                      },
                                      child: 'Test'.txt,
                                    ),
                                  ],
                                ),
                              ],
                            ).padByUnits(2, 2, 2, 2),
                          ).size(width: 460, height: 320),
                      ],
                    ),
                  );
                },
              );
            },
          ).expand(),
        ],
      ).padByUnits(0, 3, 0, 3),
    );
  }
}
