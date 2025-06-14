/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/dialog_header.dart';
import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/skills/agent_card_retriever.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class AgentCardDialog extends StatelessWidget {
  const AgentCardDialog({super.key, required this.agentUrl});

  final Uri agentUrl;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return AlertDialog(
          title: DialogHeader('Agent Card'),
          content: FutureBuilder<AgentCard>(
            future: AgentCardRetriever().getAgentCard(agentUrl),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('No agent card available.'),
                ).size(width: 300, height: 100);
              }

              final agentCard = snapshot.data;
              if (agentCard == null) {
                return Center(
                  child: Text('Loading agent card...'),
                ).size(width: 300, height: 100);
              }

              return ListView(
                children: [
                  [agentCard.name.h2, Spacer(), agentCard.version.txt].row(),
                  Divider(),
                  VGap.small(),
                  SectionTitle(text: 'Description'),
                  VGap.small(),
                  Card(
                    color: context.colorScheme.surface,
                    child: agentCard.description.txt.padByUnits(2, 2, 2, 2),
                  ),
                  VGap.small(),
                  SectionTitle(text: 'Default Input/Output'),
                  if (agentCard.defaultInputModes != null)
                    Row(
                      children: [
                        Icon(
                          Icons.input,
                          size: 12,
                          color: context.colorScheme.primary,
                        ),
                        HGap(),
                        'Input: ${agentCard.defaultInputModes?.join(",")}'.txt,
                      ],
                    ).padByUnits(1, 2, 0, 2),
                  if (agentCard.defaultOutputModes != null)
                    Row(
                      children: [
                        Icon(
                          Icons.output,
                          size: 12,
                          color: context.colorScheme.primary,
                        ),
                        HGap(),
                        'Output: ${agentCard.defaultOutputModes?.join(",")}'
                            .txt,
                      ],
                    ).padByUnits(1, 2, 1, 2),
                  VGap.small(),
                  SectionTitle(
                    text: 'Skills (${agentCard.skills?.length ?? 0})',
                  ),
                  VGap.small(),
                  for (var skill in (agentCard.skills ?? <Skill>[]))
                    Card(
                      color: context.colorScheme.surface,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          skill.name.toString().h3.padByUnits(1, 2, 1, 2),
                          skill.description.toString().txt.padByUnits(
                            1,
                            2,
                            1,
                            2,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.tag_sharp,
                                size: 12,
                                color: context.colorScheme.primary,
                              ),
                              HGap(),
                              'Tags'.txt,
                            ],
                          ).padByUnits(1, 2, 1, 2),
                          Wrap(
                            spacing: 8,
                            children: [
                              for (var tag in (skill.tags ?? <String>[]))
                                Chip(
                                  padding: const EdgeInsets.all(0),
                                  label: tag.toString().txt,
                                  backgroundColor:
                                      context.colorScheme.secondaryContainer,
                                ),
                            ],
                          ).padByUnits(1, 2, 1, 2),
                          if (skill.inputModes != null)
                            Row(
                              children: [
                                Icon(
                                  Icons.input,
                                  size: 12,
                                  color: context.colorScheme.primary,
                                ),
                                HGap(),
                                'Input: ${skill.inputModes?.join(",")}'.txt,
                              ],
                            ).padByUnits(1, 2, 1, 2),
                          if (skill.outputModes != null)
                            Row(
                              children: [
                                Icon(
                                  Icons.output,
                                  size: 12,
                                  color: context.colorScheme.primary,
                                ),
                                HGap(),
                                'Output: ${skill.outputModes?.join(",")}'.txt,
                              ],
                            ).padByUnits(1, 2, 1, 2),
                          if (skill.examples != null &&
                              skill.examples?.isNotEmpty == true)
                            Row(
                              children: [
                                Icon(
                                  Icons.account_tree,
                                  size: 12,
                                  color: context.colorScheme.primary,
                                ),
                                HGap(),
                                'Examples'.txt,
                              ],
                            ).padByUnits(1, 2, 1, 2),
                          for (var example in skill.examples ?? <String>[])
                            '- $example'.txt.padByUnits(0, 2, 1, 2),
                          VGap.small(),
                        ],
                      ),
                    ).expand(),
                ],
              ).size(height: 600, width: 600);
            },
          ),
        );
      },
    );
  }
}
