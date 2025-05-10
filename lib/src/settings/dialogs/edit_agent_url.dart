/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/client/notifiers/agent_url_notifier.dart';
import 'package:arc_view/src/client/notifiers/agents_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/settings/notifiers/env_notifier.dart';
import 'package:arc_view/src/usecases/search/syntax_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';

class EditAgentUrl extends StatefulWidget {
  const EditAgentUrl({super.key, required this.onSave});

  final Function(String) onSave;

  @override
  State<EditAgentUrl> createState() => _EditAgentUrlState();
}

class _EditAgentUrlState extends State<EditAgentUrl> {
  final _textController = SyntaxTextController();
  var agents = <String>[];
  var loadingAgents = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final env = ref.watch(envNotifierProvider);
        final agentUrl = ref.watch(agentUrlNotifierProvider);

        return AlertDialog(
          shape: BeveledRectangleBorder(),
          title:
              [
                Text('Connect To Agent'),
                Spacer(),
                SecondaryButton(
                  icon: Icons.close,
                  description: 'Close Dialog',
                  onPressed: () {
                    context.pop();
                  },
                ),
              ].row(),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VGap(),
              DropdownMenu<String>(
                width: 600,
                initialSelection: agentUrl.url.toString(),
                controller: _textController,
                enableFilter: true,
                //requestFocusOnTap: true,
                label: const Text('Agent Url'),
                onSelected: (_) {
                  setState(() {
                    loadingAgents = true;
                  });
                  ref
                      .read(agentsNotifierProvider.notifier)
                      .checkUrl(_textController.text)
                      .then((agentData) {
                        setState(() {
                          agents = agentData.names.map((a) => a.name).toList();
                          loadingAgents = false;
                        });
                      });
                },
                dropdownMenuEntries:
                    env
                        .map((e) => DropdownMenuEntry(value: e, label: e))
                        .toList(),
              ),
              VGap.small(),
              'Discovered Agents'.txt.padByUnits(0, 0, 0, 0),
              VGap.small(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: context.colorScheme.outline),
                  borderRadius: BorderRadius.circular(4),
                ),
                width: double.infinity,
                child:
                    loadingAgents
                        ? Center(child: 'Loading Agents...'.txt)
                        : (agents.isNotEmpty
                            ? Wrap(
                              spacing: 8,
                              children: [
                                for (final a in agents) Chip(label: a.txt),
                              ],
                            ).padding()
                            : Center(child: 'No Agents found'.txt)),
              ).expand(),
              VGap.small(),
              'Warning: Safari cannot connect to local Agents.'.small,
            ],
          ).size(height: 300, width: 600),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                ref.addEnv(_textController.text);
                ref
                    .read(agentUrlNotifierProvider.notifier)
                    .setUrl(_textController.text);
                widget.onSave(_textController.text);
                Navigator.of(context).pop();
              },
              child: Text('Connect'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

///
/// Shows the [EditUseCaseDialog].
///
///
showEditAgentUrl(BuildContext context, WidgetRef ref) {
  showDialog(
    context: context,
    builder: (context) {
      return EditAgentUrl(onSave: (text) {});
    },
  );
}
