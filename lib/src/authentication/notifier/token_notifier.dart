/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config_loader.dart';
import '../model/tokens.dart';
import '../repository/base_token_repository.dart';
import '../repository/default_token_repository.dart';
import '../repository/secure_token_repository.dart';
import '../util/auth_util.dart';

part 'token_notifier.g.dart';

@riverpod
class TokenNotifier extends _$TokenNotifier {
  late final TokenStorageRepository _storage;

  @override
  Future<Tokens?> build() async {
    final storageType = Config.get('storage.type', defaultValue: "default");
    _storage = storageType == 'secure'
        ? SecureTokenRepository()
        : DefaultTokenRepository();

    return await _storage.getToken();
  }

  Future<void> saveToken(Tokens tokens) async {
    state = const AsyncValue.loading();
    await _storage.saveToken(tokens);
    state = AsyncValue.data(tokens);
  }

  Future<void> clearToken() async {
    state = const AsyncValue.loading();
    await _storage.clearToken();
    state = const AsyncValue.data(null);
  }

  Future<Tokens?> getToken() async {
    return await _storage.getToken();
  }

  // ignore: avoid_public_notifier_properties
  bool get hasValidToken {
    final tokens = state.asData?.value;
    if (tokens == null) return false;
    return isTokenExpired(tokens.expiresAt);
  }
}
