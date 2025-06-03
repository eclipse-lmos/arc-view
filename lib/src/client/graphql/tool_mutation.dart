/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:graphql/client.dart';

toolMutation() {
  return gql(r'''
  mutation tool($name: String!, $parameters: String!) {
    tool(name: $name, parameters: $parameters) {
      result
      error
    }
  }
  ''');
}
