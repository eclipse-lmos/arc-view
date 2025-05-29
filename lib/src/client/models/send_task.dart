/*
 * SPDX-FileCopyrightText: 2025 Deutsche Telekom AG and others
 *
 * SPDX-License-Identifier: Apache-2.0
 */
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_task.freezed.dart';

part 'send_task.g.dart';

@freezed
sealed class SendTaskRequest with _$SendTaskRequest {
  factory SendTaskRequest({
    required String jsonrpc,
    required String method,
    required String id,
    required TaskSendParams params,
    Map<String, String>? metadata,
  }) = _SendTaskRequest;

  factory SendTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$SendTaskRequestFromJson(json);
}

@freezed
sealed class TaskSendParams with _$TaskSendParams {
  factory TaskSendParams({
    required String id,
    required String sessionId,
    required A2AMessage message,
    Map<String, String>? metadata,
  }) = _TaskSendParams;

  factory TaskSendParams.fromJson(Map<String, dynamic> json) =>
      _$TaskSendParamsFromJson(json);
}

@freezed
sealed class A2AMessage with _$A2AMessage {
  factory A2AMessage({
    required String role,
    required List<Part> parts,
    Map<String, String>? metadata,
  }) = _A2AMessage;

  factory A2AMessage.fromJson(Map<String, dynamic> json) =>
      _$A2AMessageFromJson(json);
}

@freezed
sealed class Part with _$Part {
  factory Part({
    required String text,
    required String type,
    Map<String, String>? metadata,
  }) = _Part;

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
}
