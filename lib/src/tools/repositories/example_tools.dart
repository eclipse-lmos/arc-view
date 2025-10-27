/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */

import 'package:arc_view/src/tools/models/test_tool.dart';

final exampleTools = [
  TestTool(
    id: 'verify_customer_vehicle',
    name: 'verify_customer_vehicle',
    description: 'A tool to verify customer vehicle',
    title: 'A tool to verify customer vehicle',
    value: 'Vehicle has been verified successfully.',
    parameters: [
      TestToolParameter(
        name: 'customer_id',
        description: 'The Name of the customer',
        type: 'string',
      ),
      TestToolParameter(
        name: 'vehicle_id',
        description: 'The model of the vehicle',
        type: 'string',
      ),
    ],
  ),
  TestTool(
    id: 'book_appointment',
    name: 'book_appointment',
    description: 'Book an appointment for vehicle service',
    title: 'Book an appointment for vehicle service',
    value: 'Appointment has been booked successfully.',
    parameters: [
      TestToolParameter(
        name: 'customer_id',
        description: 'The Name of the customer',
        type: 'string',
      ),
      TestToolParameter(
        name: 'vehicle_id',
        description: 'The model of the vehicle',
        type: 'string',
      ),
    ],
  ),
  TestTool(
    id: 'send_confirmation',
    name: 'send_confirmation',
    description: 'Send confirmation for vehicle service appointment',
    title: 'Send confirmation for vehicle service appointment',
    value: 'Confirmation has been sent successfully.',
    parameters: [],
  ),
  TestTool(
    id: 'check_availability',
    name: 'check_availability',
    description: 'Check availability for vehicle service appointment',
    title: 'Check availability for vehicle service appointment',
    value: 'Appointment available.',
    parameters: [
      TestToolParameter(
        name: 'date',
        description: 'The date for the appointment',
        type: 'string',
      ),
    ],
  ),
  TestTool(
    id: 'suggest_alternative_dates',
    name: 'suggest_alternative_dates',
    description: 'Retrieve alternative dates for vehicle service appointment',
    title: 'Retrieve alternative dates for vehicle service appointment',
    value:
        'The following alternative dates are available: [2025-12-10, 2025-12-12, 2025-12-15]',
    parameters: [],
  ),
  TestTool(
    id: 'subscribe_to_live_updates',
    name: 'subscribe_to_live_updates',
    description: 'Subscribe to live updates during vehicle service',
    title: 'Subscribe to live updates during vehicle service',
    value: 'Subscription to live updates has been successful.',
    parameters: [],
  ),
  TestTool(
    id: 'fetch_typical_service_time',
    name: 'fetch_typical_service_time',
    description: 'Fetch typical service time for vehicle service',
    title: 'Fetch typical service time for vehicle service',
    value: 'Typical service time is 2 hours.',
    parameters: [],
  ),
];
