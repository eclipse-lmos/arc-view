/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/tools/tools_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

///
/// Search Panel
///
class SearchToolsPanel extends ConsumerStatefulWidget {
  const SearchToolsPanel({super.key});

  @override
  SearchToolsPanelState createState() => SearchToolsPanelState();
}

class SearchToolsPanelState extends ConsumerState<SearchToolsPanel> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cleared = ref.watch(toolFilterProvider.select((e) => e == null));

    if (cleared) {
      _textController.clear();
    }

    return SearchBar(
      controller: _textController,
      textStyle: WidgetStatePropertyAll<TextStyle>(theme.textTheme.bodyMedium!),
      constraints: BoxConstraints(maxHeight: 80),
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(4)),
      onChanged: (text) {
        final state = text.trim().isEmpty ? null : text;
        ref.read(toolFilterProvider.notifier).state = state;
      },
      leading: const Icon(Icons.search, size: 20).padByUnits(0, 1, 0, 1),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
