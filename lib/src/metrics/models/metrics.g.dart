// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Metrics _$MetricsFromJson(Map<String, dynamic> json) => _Metrics(
  color: (json['color'] as num).toInt(),
  name: json['name'] as String,
  conversationId: json['conversationId'] as String?,
  plots: (json['plots'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      $enumDecode(_$PlotTypeEnumMap, k),
      (e as List<dynamic>)
          .map((e) => Plot.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  ),
);

Map<String, dynamic> _$MetricsToJson(_Metrics instance) => <String, dynamic>{
  'color': instance.color,
  'name': instance.name,
  'conversationId': instance.conversationId,
  'plots': instance.plots.map((k, e) => MapEntry(_$PlotTypeEnumMap[k]!, e)),
};

const _$PlotTypeEnumMap = {
  PlotType.agentDuration: 'agentDuration',
  PlotType.agentBreaks: 'agentBreaks',
  PlotType.llmTotalTokens: 'llmTotalTokens',
  PlotType.llmFunctionCalls: 'llmFunctionCalls',
  PlotType.llmDuration: 'llmDuration',
  PlotType.llmPromptTokens: 'llmPromptTokens',
  PlotType.llmCompletionTokens: 'llmCompletionTokens',
};

_Plot _$PlotFromJson(Map<String, dynamic> json) =>
    _Plot(x: (json['x'] as num).toDouble(), y: (json['y'] as num).toDouble());

Map<String, dynamic> _$PlotToJson(_Plot instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
};
