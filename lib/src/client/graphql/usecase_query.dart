/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:graphql/client.dart';

useCaseQuery() {
  return gql('''
  query	{
     useCase() {
      cases {
         name
         content 
      }
     }
   }
  ''');
}
