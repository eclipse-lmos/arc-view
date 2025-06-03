/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:http/http.dart' as http;

//
// Work in progress
//
class UseCaseClient {
  listUseCases() {}

  Future<List<UseCase>> getUseCases() async {
    try {
      final url = Uri.parse('https://localhost:8080/usecases');
      final response = await http.post(url);
      final json = jsonDecode(response.body)['cases'] as List<dynamic>;
      return json
          .map(
            (it) => UseCase(
              id: it['id'],
              name: it['name'],
              version: '1.0.0',
              createdAt: DateTime.parse(it['createdAt']),
              content: it['content'],
              readOnly: true,
            ),
          )
          .toList();
    } catch (ex) {
      // endpoint not supported.
      return [];
    }
  }
}
