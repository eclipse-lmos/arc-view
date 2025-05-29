/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/usecases/usecases_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

///
/// Search Panel
///
class SearchUseCasesPanel extends ConsumerStatefulWidget {
  const SearchUseCasesPanel({super.key});

  @override
  SearchUseCasesPanelState createState() => SearchUseCasesPanelState();
}

class SearchUseCasesPanelState extends ConsumerState<SearchUseCasesPanel> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cleared = ref.watch(useCaseFilterProvider.select((e) => e == null));

    if (cleared) {
      _textController.clear();
    }

    return SearchBar(
      controller: _textController,
      textStyle: WidgetStatePropertyAll<TextStyle>(theme.textTheme.bodyMedium!),
      constraints: BoxConstraints(maxHeight: 80),
      padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(EdgeInsets.all(4)),
      onSubmitted: (text) {
        final filter = ref.read(useCaseFilterProvider);
        ref.read(useCaseFilterProvider.notifier).state = (
          tag: filter?.tag,
          name: text,
        );
      },
      onChanged: (_) {
        final filter = ref.read(useCaseFilterProvider);
        ref.read(useCaseFilterProvider.notifier).state = (
          tag: filter?.tag,
          name: _textController.text,
        );
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
