/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/message/copy_to_clipboard_button.dart';
import 'package:arc_view/src/chat/message/edit_message_button.dart';
import 'package:arc_view/src/chat/message/rerun_message_button.dart';
import 'package:arc_view/src/conversation/models/conversation_message.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:smiles/smiles.dart';

class ChatMessageCard extends StatelessWidget {
  const ChatMessageCard({super.key, required this.chatMessage, this.editMode});

  final ConversationMessage chatMessage;
  final bool? editMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: const EdgeInsets.all(8),
      child: Stack(
        children: [
          chatMessage.content.txt.padByUnits(3, 2, 6, 2),
          Positioned(
            bottom: 0,
            right: 0,
            child: Row(
              children: [
                if (editMode != false) EditMessageButton(chatMessage),
                CopyToClipBoardButton(chatMessage.content),
                if (editMode != false) RerunMessageButton(chatMessage.content),
              ],
            ),
          ),
        ],
      ),
    ).constrain(maxWidth: 600, minWidth: 150);
  }
}

class LoadingChatMessageCard extends StatelessWidget {
  const LoadingChatMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Theme.of(context).colorScheme.surfaceContainer,
      margin: const EdgeInsets.all(8),
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: Colors.white,
        size: 20,
      ).padByUnits(2, 2, 2, 2),
    );
  }
}
