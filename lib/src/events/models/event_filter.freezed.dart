// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventFilter {

 String get label; List<String> get options; List<String>? get active; bool Function(AgentEvent, EventFilter) get match;
/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventFilterCopyWith<EventFilter> get copyWith => _$EventFilterCopyWithImpl<EventFilter>(this as EventFilter, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventFilter&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other.options, options)&&const DeepCollectionEquality().equals(other.active, active)&&(identical(other.match, match) || other.match == match));
}


@override
int get hashCode => Object.hash(runtimeType,label,const DeepCollectionEquality().hash(options),const DeepCollectionEquality().hash(active),match);

@override
String toString() {
  return 'EventFilter(label: $label, options: $options, active: $active, match: $match)';
}


}

/// @nodoc
abstract mixin class $EventFilterCopyWith<$Res>  {
  factory $EventFilterCopyWith(EventFilter value, $Res Function(EventFilter) _then) = _$EventFilterCopyWithImpl;
@useResult
$Res call({
 String label, List<String> options, List<String>? active, bool Function(AgentEvent, EventFilter) match
});




}
/// @nodoc
class _$EventFilterCopyWithImpl<$Res>
    implements $EventFilterCopyWith<$Res> {
  _$EventFilterCopyWithImpl(this._self, this._then);

  final EventFilter _self;
  final $Res Function(EventFilter) _then;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? options = null,Object? active = freezed,Object? match = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as List<String>?,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as bool Function(AgentEvent, EventFilter),
  ));
}

}


/// @nodoc


class _EventFilter extends EventFilter {
   _EventFilter({required this.label, required final  List<String> options, final  List<String>? active, required this.match}): _options = options,_active = active,super._();
  

@override final  String label;
 final  List<String> _options;
@override List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  List<String>? _active;
@override List<String>? get active {
  final value = _active;
  if (value == null) return null;
  if (_active is EqualUnmodifiableListView) return _active;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool Function(AgentEvent, EventFilter) match;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventFilterCopyWith<_EventFilter> get copyWith => __$EventFilterCopyWithImpl<_EventFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventFilter&&(identical(other.label, label) || other.label == label)&&const DeepCollectionEquality().equals(other._options, _options)&&const DeepCollectionEquality().equals(other._active, _active)&&(identical(other.match, match) || other.match == match));
}


@override
int get hashCode => Object.hash(runtimeType,label,const DeepCollectionEquality().hash(_options),const DeepCollectionEquality().hash(_active),match);

@override
String toString() {
  return 'EventFilter(label: $label, options: $options, active: $active, match: $match)';
}


}

/// @nodoc
abstract mixin class _$EventFilterCopyWith<$Res> implements $EventFilterCopyWith<$Res> {
  factory _$EventFilterCopyWith(_EventFilter value, $Res Function(_EventFilter) _then) = __$EventFilterCopyWithImpl;
@override @useResult
$Res call({
 String label, List<String> options, List<String>? active, bool Function(AgentEvent, EventFilter) match
});




}
/// @nodoc
class __$EventFilterCopyWithImpl<$Res>
    implements _$EventFilterCopyWith<$Res> {
  __$EventFilterCopyWithImpl(this._self, this._then);

  final _EventFilter _self;
  final $Res Function(_EventFilter) _then;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? options = null,Object? active = freezed,Object? match = null,}) {
  return _then(_EventFilter(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,active: freezed == active ? _self._active : active // ignore: cast_nullable_to_non_nullable
as List<String>?,match: null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as bool Function(AgentEvent, EventFilter),
  ));
}


}

// dart format on
