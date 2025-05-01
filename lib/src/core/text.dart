/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LargeTitle extends StatelessWidget {
  const LargeTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleMedium);
  }
}

class SmallText extends StatelessWidget {
  const SmallText(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.bodySmall);
  }
}

class SmallLinkedText extends StatelessWidget {
  const SmallLinkedText(
    this.title, {
    required this.tip,
    this.onPressed,
    super.key,
  });

  final String title;
  final String tip;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text('[$title]', style: Theme.of(context).textTheme.bodySmall),
    ).tip(tip);
  }
}

extension MarkDownExtension on String {
  Widget markDown() => Builder(
    builder:
        (BuildContext context) => MarkdownBody(
          styleSheet: MarkdownStyleSheet.fromTheme(
            Theme.of(context),
          ).copyWith(code: TextStyle(fontSize: 12), p: TextStyle(fontSize: 12)),
          selectable: true,
          fitContent: true,
          data: this,
          onTapLink: (text, href, title) {
            if (href?.startsWith('#') == true) {
              context.go(href!.substringAfter('#'));
              return;
            }
            if (href != null) launchUrlString(href);
          },
        ),
  );
}
