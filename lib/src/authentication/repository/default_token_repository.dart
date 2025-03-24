/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:arc_view/src/authentication/model/tokens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'base_token_repository.dart';

// ────────────────────────────────────────────
// Default riverpod state notifier storage implementation (In-Memory)
// ────────────────────────────────────────────
class DefaultTokenRepository extends StateNotifier<Tokens?>
    implements TokenStorageRepository {
  DefaultTokenRepository() : super(null);

  @override
  Future<void> saveToken(Tokens tokens) async {
    state = tokens;
  }

  @override
  Future<Tokens?> getToken() async {
    return state;
  }

  @override
  Future<void> clearToken() async {
    state = null;
  }
}
