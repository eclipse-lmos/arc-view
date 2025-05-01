/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/models/use_case_group.dart';
import 'package:arc_view/src/usecases/notifiers/selected_usecase_group_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class UseCaseGroupButton extends ConsumerWidget {
  const UseCaseGroupButton({required this.group, super.key});

  final UseCaseGroup group;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 200,
      child: Material(
        color: Color(group.color),
        child: InkWell(
          onTap: () {
            ref
                .read(selectedUseCaseGroupNotifierProvider.notifier)
                .setSelected(group.id);
          },
          child: ListTile(
            title: group.name.style(color: Colors.white),
            subtitle: group.description.style(color: Colors.white),
            dense: true,
          ),
        ),
      ),
    );
  }
}
