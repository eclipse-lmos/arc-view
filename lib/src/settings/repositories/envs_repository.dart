/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'envs_repository.g.dart';

@riverpod
EnvsRepository envsRepository(Ref ref) {
  final preferences = ref.read(sharedPreferencesProvider);
  return EnvsRepository(preferences);
}

///
/// Repository for loading and saving environments.
///
class EnvsRepository {
  EnvsRepository(this._preferences);

  final SharedPreferences _preferences;

  Set<String> fetch() {
    final envs = _preferences.getStringList('envs')?.toSet() ?? {};
    envs.add('http://localhost:8080');
    envs.add('http://localhost:8090');
    return envs;
  }

  save(Set<String> envs) {
    _preferences.setStringList('envs', envs.toList());
  }

  Set<String> add(String env) {
    final result = {...fetch().where((e) => e != env), env};
    save(result);
    return result;
  }

  Set<String> remove(String env) {
    final result = {...fetch().where((e) => e != env)};
    save(result);
    return result;
  }
}
