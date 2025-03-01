/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smiles/smiles.dart';

PreferredSizeWidget AppBarTitle(String title) {
  return AppBar(
      title: title.h1
          .toLeft()
          .padByUnits(2, 1, 1, 2)
          .animate()
          .moveY(begin: -30)
          .fadeIn());
}
