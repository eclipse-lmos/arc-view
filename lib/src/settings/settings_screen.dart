/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/conversation/notifiers/conversations_notifier.dart';
import 'package:arc_view/src/core/app_bar_title.dart';
import 'package:arc_view/src/core/section_title.dart';
import 'package:arc_view/src/settings/address_bar.dart';
import 'package:arc_view/src/settings/context_field.dart';
import 'package:arc_view/src/settings/env_wrap.dart';
import 'package:arc_view/src/settings/notifiers/settings_notifier.dart';
import 'package:arc_view/src/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smiles/smiles.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final conversation = ref.read(conversationsNotifierProvider).current;
      const JsonEncoder encoder = JsonEncoder.withIndent('  ');

      return Scaffold(
        appBar: AppBarTitle('Settings'),
        floatingActionButton: Consumer(builder: (context, ref, _) {
          final changed = ref.watchSettingsChanged();

          return 'Save'.onButtonPressed(() {
            if (!_formKey.currentState!.validate()) return;
            _formKey.currentState!.save();
            ref.commitSettings();
          }, disabled: !changed);
        }),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.dark_mode,
                        size: 16,
                        color: context.colorScheme.onSurface,
                      ),
                      onPressed: () {
                        ref.read(themeNotifierProvider.notifier).toggle();
                      }).pad(8, 8, 8, 8),
                  '3.0.0'.txt.pad(8, 8, 8, 8),
                  'Licenses'.onPressed(() {
                    showLicensePage(context: context);
                  }).pad(8, 8, 8, 8),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: const AddressBar().padByUnits(1, 1, 1, 1),
                  ).padByUnits(1, 1, 0, 1),
                  Card(
                    child: EnvWrap()
                        .padByUnits(1, 1, 1, 1)
                        .percentOfScreen(width: 0.4),
                  ).padByUnits(1, 1, 0, 1),
                ],
              ),
              VGap.small(),
              Card(
                elevation: 4,
                child: [
                  SectionTitle(text: 'Set the context for outgoing requests')
                      .padByUnits(3, 1, 1, 2)
                      .toLeft(),
                  ContextField(
                    'User Context',
                    encoder.convert(conversation.userContext.toJson()),
                    onChanged: (value) {
                      ref
                          .read(settingsNotifierProvider.notifier)
                          .updateChanged();
                    },
                    onSave: (value) {
                      ref
                          .read(settingsNotifierProvider.notifier)
                          .updateUserContext(value);
                    },
                  ).padding(16),
                  const VGap(),
                  ContextField(
                    'System Context',
                    encoder.convert(conversation.systemContext.toJson()),
                    onChanged: (value) {
                      ref
                          .read(settingsNotifierProvider.notifier)
                          .updateChanged();
                    },
                    onSave: (value) {
                      ref
                          .read(settingsNotifierProvider.notifier)
                          .updateSystemContext(value);
                    },
                  ).padding(16)
                ].column(),
              ).padByUnits(1, 1, 1, 1),
            ],
          ).padByUnits(1, 1, 1, 1),
        ),
      );
    });
  }
}
