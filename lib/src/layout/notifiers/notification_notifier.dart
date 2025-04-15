/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smiles/smiles.dart';

part 'notification_notifier.g.dart';

///
/// Holds the use case that has been selected and is sent to the Agent.
///
@riverpod
class NotificationNotifier extends _$NotificationNotifier {
  @override
  String? build() {
    return null;
  }

  notify(String message) {
    state = message;
    Future.delayed(7.seconds).then((value) {
      clear();
    });
  }

  clear() {
    state = null;
  }
}

///
/// Extension on [BuildContext] to show a notification.
///
extension NotificationNotifierX on BuildContext {
  notify(String message) {
    final snackBar = SnackBar(
      content: message.markDown(this),
      backgroundColor: colorScheme.primaryContainer,
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
