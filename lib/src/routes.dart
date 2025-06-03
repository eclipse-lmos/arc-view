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
import 'package:arc_view/src/tools/tool_screen.dart';
import 'package:arc_view/src/tools/tools_screen.dart';
import 'package:arc_view/src/usecases/edit_usecases_screen.dart';
import 'package:arc_view/src/usecases/usecases_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'authentication/login_screen.dart';
import 'authentication/notifier/token_notifier.dart';
import 'authentication/splash_screen.dart';
import 'authentication/util/auth_util.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);
final GlobalKey<NavigatorState> _mainNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'mainNav',
);

/// Main Routing
GoRouter createRouter(WidgetRef ref) {
  return GoRouter(
    initialLocation: '/chat',
    debugLogDiagnostics: true,
    //enable for testing and see logs
    navigatorKey: _rootNavigatorKey,
    routes: [
      // 1. Splash route
      GoRoute(path: '/splash', builder: (context, state) => SplashScreen()),
      // 2. Login route (outside the shell)
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),

      // 3. The ShellRoute for your main layout & tabs
      ShellRoute(
        navigatorKey: _mainNavigatorKey,
        builder: (context, state, child) {
          final index = switch (state.matchedLocation) {
            '/chat' => 0,
            '/usecases' => 1,
            '/tools' => 2,
            '/tests' => 3,
            '/charts' => 4,
            '/settings' => 5,
            _ => 0,
          };
          return MainLayout(index: index, child: child);
        },
        routes: [
          GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
          GoRoute(
            path: '/chat',
            builder: (context, state) => const ChatScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: '/tools',
            builder: (context, state) => const ToolsScreen(),
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
            builder:
                (context, state) =>
                    EditUseCasesScreen(useCaseId: state.pathParameters['id']!),
          ),
          GoRoute(
            path: '/tool/:toolId',
            builder:
                (context, state) =>
                    ToolScreen(toolId: state.pathParameters['toolId'] ?? ''),
          ),
        ],
      ),
    ],
    // 4. Global redirect logic
    redirect: (context, state) {
      final tokenNotifier = ref.watch(tokenNotifierProvider.notifier);
      final hasValidToken = tokenNotifier.hasValidToken;
      final isSplash = state.uri.path == '/splash';
      final isLogin = state.uri.path == '/login';
      if (mandatoryLoggedInEnabled()) {
        if (isSplash) return hasValidToken ? '/' : '/login';
        //No valid then go to login screen
        if (!hasValidToken && !isLogin) return '/login';
        //already login then redirect to home
        if (hasValidToken && isLogin) return '/';
        //No redirection required
        return null;
      }
      return null;
    },
  );
}
