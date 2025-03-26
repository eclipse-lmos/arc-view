/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:smiles/smiles.dart';

///
/// Dark Theme
///
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'RobotoMono',
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 1, 29, 94),
    onSurface: Colors.white.withOpacity(0.7),
    outline: Colors.white.withOpacity(0.2),
    surface: const Color.fromARGB(255, 24, 23, 29),
    surfaceContainer: const Color.fromARGB(255, 40, 39, 45),
  ),
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: const Color.fromARGB(255, 21, 20, 25),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: const Color.fromARGB(255, 40, 39, 45),
  ),
  cardTheme: CardTheme(
    color: const Color.fromARGB(255, 40, 39, 45),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: const Color.fromARGB(255, 52, 52, 57)),
      borderRadius: BorderRadius.circular(6),
    ),
  ),
  dataTableTheme: DataTableThemeData(headingRowHeight: 36),
  tabBarTheme: TabBarTheme(
    labelColor: Colors.white.withOpacity(0.5),
    unselectedLabelColor: Colors.white.withOpacity(0.5),
    labelPadding: const EdgeInsets.all(0),
    indicatorColor: Colors.white.withOpacity(0.5),
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color.fromARGB(255, 40, 39, 45),
    behavior: SnackBarBehavior.floating,
    width: 400,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentTextStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(fontSize: 10.0, color: Colors.white.withOpacity(0.6)),
    bodyMedium: TextStyle(fontSize: 12.0),
    bodyLarge: TextStyle(fontSize: 14.0),
    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 14.0),
    titleMedium: TextStyle(fontSize: 16.0),
    headlineSmall: TextStyle(fontSize: 16.0),
    headlineMedium: TextStyle(fontSize: 22.0),
  ),
  useMaterial3: true,
  pageTransitionsTheme: _pageTransitionsTheme,
  extensions: const [PaddingTheme(unit: 8), GapsTheme(unit: 4)],
);

///
/// Light Theme
///
///
final lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'RobotoMono',
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 0, 229, 255),
    surface: const Color.fromARGB(255, 230, 230, 230),
    surfaceContainer: const Color.fromARGB(255, 230, 230, 230),
    onSurface: Colors.black,
    outline: Colors.black.withOpacity(0.2),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: const Color.fromARGB(255, 1, 10, 11),
    unselectedLabelColor: const Color.fromARGB(255, 1, 10, 11),
    labelPadding: const EdgeInsets.all(0),
    indicatorColor: const Color.fromARGB(255, 1, 10, 11),
  ),
  cardTheme: CardTheme(
    color: const Color.fromARGB(255, 245, 245, 245),
    elevation: 6,
  ),
  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color.fromARGB(255, 40, 39, 45),
    behavior: SnackBarBehavior.floating,
    width: 400,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentTextStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(fontSize: 10.0),
    bodyMedium: TextStyle(fontSize: 12.0),
    bodyLarge: TextStyle(fontSize: 14.0),
    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 14.0),
    titleMedium: TextStyle(fontSize: 16.0),
    headlineSmall: TextStyle(fontSize: 16.0),
    headlineMedium: TextStyle(fontSize: 22.0),
  ),
  useMaterial3: true,
  pageTransitionsTheme: _pageTransitionsTheme,
  extensions: const [PaddingTheme(unit: 8), GapsTheme(unit: 4)],
);

///
/// PageTransitionsTheme
///
const _pageTransitionsTheme = PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.linux: _NoAnimationPageTransitionsBuilder(),
    TargetPlatform.macOS: _NoAnimationPageTransitionsBuilder(),
    TargetPlatform.windows: _NoAnimationPageTransitionsBuilder(),
  },
);

class _NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const _NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
