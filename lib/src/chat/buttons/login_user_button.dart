/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class LoginUserButton extends ConsumerWidget {
  const LoginUserButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          HGap.small(),
          'Add User Token'.small,
          HGap.small(),
          Transform(
            alignment: AlignmentDirectional.centerStart,
            transform: Matrix4.identity()..scale(0.8),
            child: Switch(
              padding: const EdgeInsets.all(0),
              value:
                  ref
                      .read(conversationsNotifierProvider)
                      .current
                      .userContext
                      .userToken !=
                  null,
              onChanged: (on) {
                _setUserToken(ref, on);
              },
            ),
          ).center(),
        ],
      ),
    ).tip('Adds a user token to the request.');
  }

  _setUserToken(WidgetRef ref, bool on) {
    final conversation = ref.read(conversationsNotifierProvider).current;
    final updatedConversation = conversation.copyWith(
      userContext: conversation.userContext.copyWith(
        userToken: on ? "userToken" : null,
      ),
    );
    ref
        .read(conversationsNotifierProvider.notifier)
        .updateConversation(updatedConversation);
  }
}
