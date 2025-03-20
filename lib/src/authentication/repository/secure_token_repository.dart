/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import '../model/tokens.dart';
import 'base_token_repository.dart';

class SecureTokenRepository implements TokenStorageRepository {
  //Todo Flutter secure library object
  @override
  Future<void> clearToken() {
    throw UnimplementedError();
  }

  @override
  Future<Tokens?> getToken() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveToken(Tokens tokens) {
    // TODO: implement saveToken to secure object
    throw UnimplementedError();
  }
}
