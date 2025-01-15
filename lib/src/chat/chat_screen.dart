/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/chat/chat_panel.dart';
import 'package:arc_view/src/chat/right_panel.dart';
import 'package:arc_view/src/chat/toolbar/tool_bar.dart';
import 'package:arc_view/src/layout/adaptive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late TextEditingController _textController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final bigScreen = MediaQuery.sizeOf(context).width > 1100;

          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const VGap(),
                const ToolBar(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: bigScreen
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.center,
                  children: [
                    if (bigScreen) const HGap.small(),
                    const ChatPanel()
                        .percentOfScreen(width: bigScreen ? 0.6 : 0.8),
                    if (bigScreen) const RightPanel(width: 400),
                  ],
                ).expand(),
              ],
            ),
          );
        },
      ),
    );
  }
}
