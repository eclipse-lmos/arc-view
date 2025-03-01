/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/chat_screen.dart';
import 'package:arc_view/src/events/events_screen.dart';
import 'package:arc_view/src/home/home_screen.dart';
import 'package:arc_view/src/layout/main_layout.dart';
import 'package:arc_view/src/metrics/charts_screen.dart';
import 'package:arc_view/src/settings/settings_screen.dart';
import 'package:arc_view/src/tests/tests_screen.dart';
import 'package:arc_view/src/usecases/edit_usecases_screen.dart';
import 'package:arc_view/src/usecases/usecases_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'mainNav');

/// Main Routing
final appRoutes = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _mainNavigatorKey,
      builder: (context, state, child) {
        final index = switch (state.matchedLocation) {
          '/' => 0,
          '/chat' => 1,
          '/usecases' => 2,
          '/tests' => 3,
          '/charts' => 4,
          '/settings' => 5,
          _ => 0,
        };
        return MainLayout(index: index, child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/chat',
          builder: (context, state) => const ChatScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/usecases',
          builder: (context, state) => const UseCasesScreen(),
        ),
        GoRoute(
          path: '/tests',
          builder: (context, state) => const TestsScreen(),
        ),
        GoRoute(
          path: '/events',
          builder: (context, state) => const EventsScreen(),
        ),
        GoRoute(
          path: '/charts',
          builder: (context, state) => const ChartsScreen(),
        ),
        GoRoute(
          path: '/edit_usecase/:id',
          builder: (context, state) =>
              EditUseCasesScreen(useCaseId: state.pathParameters['id']!),
        ),
      ],
    ),
  ],
);
