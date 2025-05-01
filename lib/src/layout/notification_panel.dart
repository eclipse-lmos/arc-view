/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/core/text.dart';
import 'package:arc_view/src/layout/notifiers/notification_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class NotificationPanel extends ConsumerWidget {
  const NotificationPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(notificationNotifierProvider);

    if (message == null) {
      return const SizedBox.shrink();
    }

    return Card(
      color: context.colorScheme.secondaryContainer,
      child: Row(
        children: [
          Icon(Icons.info, color: context.colorScheme.primary),
          HGap.small(),
          message.markDown(),
        ],
      ).padByUnits(1, 2, 1, 2),
    ).animate().moveY(begin: -100);
  }
}
