/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:graphql/client.dart';

toolQuery() {
  return gql('''
  query	{
    tool {
      tools {
        name
        description
        parameters
      }
    }
   }
  ''');
}
