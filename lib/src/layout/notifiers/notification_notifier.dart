/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
