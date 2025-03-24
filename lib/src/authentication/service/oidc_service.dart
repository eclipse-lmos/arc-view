/*
 * SPDX-FileCopyrightText: 2024 Deutsche Telekom AG
 *
 * SPDX-License-Identifier: Apache-2.0
 */


import '../model/tokens.dart';

abstract class OidcService {
  Future<bool> login();
  Future<bool> logout();
  Future<Tokens?> tryRefresh(String refreshToken);
}