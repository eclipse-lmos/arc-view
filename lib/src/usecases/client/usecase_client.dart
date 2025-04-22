/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'dart:convert';

import 'package:arc_view/src/usecases/models/use_cases.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:http/http.dart' as http;

//
// Work in progress
//
class UseCaseClient {
  listUseCases() {}

  Future<List<UseCase>> getUseCases() async {
    try {
      final url = Uri.parse('http://localhost:8090/usecases');
      final response = await http.get(url);
      final json = jsonDecode(response.body)['cases'] as List<dynamic>;
      Future.delayed(5.seconds);
      return json
          .map(
            (it) => UseCase(
              name: it['name'],
              createdAt: DateTime.parse(it['createdAt']),
              content: it['content'],
            ),
          )
          .toList();
    } catch (ex) {
      // endpoint not supported.
      return [];
    }
  }
}
