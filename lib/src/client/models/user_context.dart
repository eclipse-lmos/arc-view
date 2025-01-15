/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_context.freezed.dart';
part 'user_context.g.dart';

@freezed
class UserContext with _$UserContext {
  factory UserContext({
    required List<ProfileEntry> profile,
    required String userId,
    String? userToken,
  }) = _UserContext;

  factory UserContext.fromJson(Map<String, dynamic> json) =>
      _$UserContextFromJson(json);
}

@freezed
class ProfileEntry with _$ProfileEntry {
  factory ProfileEntry({
    required String key,
    required String value,
  }) = _ProfileEntry;

  factory ProfileEntry.fromJson(Map<String, dynamic> json) =>
      _$ProfileEntryFromJson(json);
}
