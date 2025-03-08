/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smiles/smiles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key, required this.child, required this.index});

  final Widget child;
  final int index;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          NavigationRail(
            elevation: 6,
            selectedIndex: widget.index,
            onDestinationSelected: (int index) {
              switch (index) {
                case 0:
                  GoRouter.of(context).go('/');
                  break;
                case 1:
                  GoRouter.of(context).go('/chat');
                  break;
                case 2:
                  GoRouter.of(context).go('/usecases');
                  break;
                case 3:
                  GoRouter.of(context).go('/tests');
                  break;
                case 4:
                  GoRouter.of(context).go('/charts');
                  break;
                case 5:
                  GoRouter.of(context).go('/settings');
                  break;
              }
            },
            trailing: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: InkWell(
                onTap: () {
                  launchUrlString('https://eclipse.dev/lmos/');
                },
                child: SvgPicture.asset(
                  'assets/lmos.svg',
                  semanticsLabel: 'Lmos Logo',
                  width: 30,
                ).padByUnits(0, 0, 2, 0),
              ),
            ).expand(),
            minWidth: 60,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home, size: 16),
                label: SmallText('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.chat_outlined, size: 16),
                label: SmallText('Chat'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.book_rounded, size: 16),
                label: SmallText('Use Cases'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.science, size: 16),
                label: SmallText('Tests'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bar_chart_sharp, size: 16),
                label: SmallText('Charts'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings, size: 16),
                label: SmallText('Settings'),
              ),
            ],
          ),
          Expanded(
            child: Material(
              child: Stack(
                children: [
                  widget.child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
