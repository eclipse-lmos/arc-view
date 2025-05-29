/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/notifiers/selected_usecase_notifier.dart';
import 'package:arc_view/src/core/secondary_button.dart';
import 'package:arc_view/src/usecases/dialogs/usecase_dialog.dart';
import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:arc_view/src/usecases/notifiers/usecases_notifier.dart';
import 'package:arc_view/src/usecases/services/usecase_exporter.dart';
import 'package:arc_view/src/usecases/usecases_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:smiles/smiles.dart';

const _columnSizes = <double>[240, 120, 300, 180, 180, 260];

class UseCaseTable extends ConsumerWidget {
  const UseCaseTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useCasesValue = ref.watch(useCasesNotifierProvider);
    final useCases = useCasesValue.valueOrNull;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final largeScreen = screenWidth > 1400;
    final smallScreen = screenWidth < 1200;
    final useCaseFilter = ref.watch(useCaseFilterProvider);
    var cases = useCases?.cases ?? [];

    if (useCasesValue.isLoading) {
      return 'Loading Use Cases...'.txt.center();
    }
    if (cases.isEmpty) {
      return 'No Use Cases at the moment'.txt.center();
    }

    if (useCaseFilter != null) {
      cases =
          cases.where((u) {
            return (useCaseFilter.tag == null ||
                    u.tags?.contains(useCaseFilter.tag) == true) &&
                (useCaseFilter.name == null ||
                    u.name.contains(useCaseFilter.name!));
          }).toList();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          child: DataTable(
            showCheckboxColumn: false,
            headingRowColor: WidgetStateColor.resolveWith(
              (states) => context.colorScheme.surfaceContainer,
            ),
            columns: [
              DataColumn(
                numeric: false,
                label: 'Name'.txt,
                onSort: (columnIndex, ascending) {
                  ref
                      .read(useCasesNotifierProvider.notifier)
                      .sortByName(ascending: ascending);
                },
                columnWidth: FixedColumnWidth(_columnSizes[0]),
              ),
              DataColumn(
                label: 'Description'.txt,
                columnWidth: FlexColumnWidth(),
              ),
              DataColumn(
                label: 'Version'.txt,
                columnWidth: FixedColumnWidth(_columnSizes[1]),
              ),
              if (!smallScreen)
                DataColumn(
                  label: 'Tags'.txt,
                  columnWidth: FixedColumnWidth(_columnSizes[2]),
                ),
              DataColumn(
                label: 'Created At'.txt,
                columnWidth: FixedColumnWidth(_columnSizes[3]),
              ),
              if (largeScreen)
                DataColumn(
                  label: 'Hash'.txt,
                  columnWidth: FixedColumnWidth(_columnSizes[4]),
                ),
              DataColumn(
                label: 'Actions'.txt,
                columnWidth: FixedColumnWidth(_columnSizes[5]),
              ),
            ],
            rows: [
              for (var i = 0; i < cases.length; i++)
                DataRow(
                  onSelectChanged: (selected) {
                    if (selected == true) {
                      _gotoUseCase(cases[i], context);
                    }
                  },
                  cells: [
                    DataCell(
                      [
                        Icon(
                          Icons.file_open_rounded,
                          size: 16,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                        HGap.units(2),
                        cases[i].name.txt,
                      ].row(),
                    ),
                    DataCell((cases[i].description ?? '').txt),
                    DataCell((cases[i].version ?? '').txt),
                    if (!smallScreen) DataCell(UseCaseTags(useCase: cases[i])),
                    DataCell(
                      DateFormat.Hm().add_yMd().format(cases[i].createdAt).txt,
                    ),
                    if (largeScreen) DataCell(cases[i].generateHash().txt),
                    DataCell(
                      [
                        if (cases[i].readOnly != true)
                          SecondaryButton(
                            icon: Icons.edit,
                            description: 'Edit Use Case Details',
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder:
                                    (context) => UseCaseDialog(
                                      title: 'Edit UseCases Details',
                                      value: cases[i],
                                      onConfirm: (details) {
                                        ref
                                            .read(
                                              useCasesNotifierProvider.notifier,
                                            )
                                            .updateUseCase(
                                              cases[i].copyWith(
                                                name: details.name,
                                                description:
                                                    details.description,
                                                tags: details.tags,
                                              ),
                                            );
                                      },
                                    ),
                              );
                            },
                          ),
                        SecondaryButton(
                          icon: Icons.download,
                          description: 'Export Use Case',
                          onPressed: () {
                            ref.read(useCaseExporterProvider).export(cases[i]);
                          },
                        ),
                        if (cases[i].readOnly != true)
                          SecondaryButton(
                            icon: Icons.copy,
                            description: 'Duplicate Use Case',
                            onPressed: () {
                              ref
                                  .read(useCasesNotifierProvider.notifier)
                                  .addUseCase(cases[i].duplicate());
                            },
                          ),
                        if (cases[i].readOnly != true)
                          SecondaryButton(
                            icon: Icons.delete,
                            confirming: true,
                            description: 'Delete Use Case',
                            onPressed: () {
                              ref
                                  .read(useCasesNotifierProvider.notifier)
                                  .deleteUseCase(cases[i]);
                            },
                          ),
                        SecondaryButton(
                          icon: Icons.open_in_new,
                          description: 'Apply Use Case',
                          onPressed: () {
                            ref
                                .read(selectedUsecaseNotifierProvider.notifier)
                                .setSelected(cases[i]);
                            context.go('/chat');
                          },
                        ),
                      ].row(),
                    ),
                  ],
                ),
            ],
          ),
        ).expand(),
      ],
    );
  }

  _gotoUseCase(UseCase useCase, BuildContext context) {
    context.push('/edit_usecase/${useCase.id}');
  }
}

Map<String, Color> tagColors = {
  'ready': Colors.teal[900] ?? Colors.teal,
  'verified': Colors.teal[900] ?? Colors.teal,
  'prod': Colors.blue[900] ?? Colors.blue,
  'live': Colors.blue[900] ?? Colors.blue,
  'test': Colors.purple[900] ?? Colors.purple,
  'broken': Colors.red[900] ?? Colors.red,
};

class UseCaseTags extends StatefulWidget {
  const UseCaseTags({super.key, required this.useCase});

  final UseCase useCase;

  @override
  State<UseCaseTags> createState() => _UseCaseTagsState();
}

class _UseCaseTagsState extends State<UseCaseTags> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      ...(widget.useCase.tags
              ?.map(
                (t) => Container(
                  decoration: BoxDecoration(
                    color: tagColors[t] ?? context.colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: t.txt.padByUnits(0, 1, 0, 1),
                ),
              )
              .toList() ??
          []),
    ].wrap(spacing: 8);
  }
}
