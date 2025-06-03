/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/tools/notifiers/remote_tools_notifier.dart';
import 'package:arc_view/src/tools/notifiers/tool_execution_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ToolScreen extends StatefulWidget {
  const ToolScreen({super.key, required this.toolId});

  final String toolId;

  @override
  State<ToolScreen> createState() => _ToolScreenState();
}

class _ToolScreenState extends State<ToolScreen> {
  Map<String, TextEditingController> _textControllers = {};

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final tool = ref.watch(
          remoteToolsNotifierProvider.select((tools) {
            return tools.valueOrNull
                ?.where((t) => t.name == widget.toolId)
                .first;
          }),
        );

        if (tool == null) {
          return Scaffold(
            appBar: AppBar(title: 'Tool Not Found'.h1, centerTitle: false),
            body: Center(child: 'The requested tool could not be found.'.txt),
          );
        }

        _textControllers = {
          for (var param in tool.parameters)
            param.name: TextEditingController(),
        };

        return Scaffold(
          appBar: AppBar(title: tool.name.h1, centerTitle: false),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VGap.small(),
              'Description'.h3,
              tool.description.txt,
              VGap.small(),
              VGap.small(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (tool.parameters.isNotEmpty) 'Parameters'.h3,
                      if (tool.parameters.isEmpty) 'No Parameters'.h3,
                      VGap.small(),
                      ...tool.parameters.map(
                        (p) => TextField(
                          controller: _textControllers[p.name],
                          decoration: InputDecoration(
                            labelText: p.name,
                            hintText: p.description,
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                        ).padByUnits(0, 0, 2, 0),
                      ),
                      VGap.small(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colorScheme.primaryContainer,
                        ),
                        onPressed: () {
                          ref
                              .read(toolExecutionNotifierProvider.notifier)
                              .executeTool(
                                tool.name,
                                _textControllers.map(
                                  (k, v) => MapEntry(k, v.text),
                                ),
                              );
                        },
                        child: 'Run'.txt,
                      ).toRight(),
                    ],
                  ).percentOfScreen(width: 0.4),
                  HGap.small(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      'Output'.h3,
                      VGap(),
                      Card(
                        child: SingleChildScrollView(
                          child: Consumer(
                            builder: (context, ref, child) {
                              return ref
                                  .watch(toolExecutionNotifierProvider)
                                  .txt;
                            },
                          ).padByUnits(2, 2, 2, 2),
                        ),
                      ).size(width: double.infinity).expand(),
                    ],
                  ).expand(),
                ],
              ).expand(),
            ],
          ).padByUnits(0, 2, 2, 2),
        );
      },
    );
  }

  @override
  void dispose() {
    _textControllers.forEach((k, v) => v.dispose());
    super.dispose();
  }
}
