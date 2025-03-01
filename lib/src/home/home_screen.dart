/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smiles/smiles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
      VGap.medium(),
      GradientText(
        'Welcome to the Arc View!',
        style: TextStyle(fontSize: 40.0),
        colors: [
          Colors.purple,
          context.colorScheme.primary,
        ],
      ).center(),
      'What magic should we create today?'.txt.padByUnits(2, 2, 2, 2),
      VGap.small(),
      Card(
        child: MarkdownBody(
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            code: TextStyle(fontSize: 12),
            p: TextStyle(fontSize: 12),
          ),
          selectable: true,
          fitContent: true,
          data: '''
This is a tool for communicating and testing your Arc Agents.
\\
\\
It is packed with features, with more on the way.
\\
Please let me know what you think. It is open source and contributions are welcome. 
\\
Check out https://github.com/eclipse-lmos/arc-view

               ''',
          onTapLink: (text, href, title) {
            if (href != null) launchUrlString(href);
          },
        ).padByUnits(2, 2, 2, 2),
      ).size(width: 700),
      VGap.small(),
      Card(
        child: '''
**Simply** start your Agents in a web application and connect to them using the Arc View.
\\
\\
**Go to Settings and set the Agent Url to your Application**.
\\
\\
Currently, the Arc View only supports the Arc GraphQL Protocol, see the [Agent GraphQL](https://eclipse.dev/lmos/docs/arc/spring/graphql) for more information.


Or checkout the Spring Quickstart project: 

https://github.com/eclipse-lmos/arc-spring-init.

    '''
            .markDown(context)
            .padByUnits(2, 2, 2, 2),
      ).size(width: 700),
      VGap.small(),
      Card(
        child: '''Be sure to enable CORS in `application.yml`:
         

    arc:
      cors:
        enabled: true

    '''
            .markDown(context)
            .padByUnits(2, 2, 2, 2),
      ).size(width: 700),
      Spacer(),
      [
        'Powered by'.txt,
        'Eclipse LMOS'.onPressed(() {
          launchUrlString('https://eclipse.dev/lmos/');
        }),
      ].row(min: true).padByUnits(0, 0, 2, 0)
    ].column());
  }
}
