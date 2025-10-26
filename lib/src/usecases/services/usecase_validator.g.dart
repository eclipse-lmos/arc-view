// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UseCaseValidationResult _$UseCaseValidationResultFromJson(
  Map<String, dynamic> json,
) => _UseCaseValidationResult(
  errors: (json['errors'] as List<dynamic>)
      .map((e) => UseCaseValidationError.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UseCaseValidationResultToJson(
  _UseCaseValidationResult instance,
) => <String, dynamic>{'errors': instance.errors};

_UseCaseValidationError _$UseCaseValidationErrorFromJson(
  Map<String, dynamic> json,
) => _UseCaseValidationError(
  code: json['code'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$UseCaseValidationErrorToJson(
  _UseCaseValidationError instance,
) => <String, dynamic>{'code': instance.code, 'message': instance.message};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(useCaseValidator)
const useCaseValidatorProvider = UseCaseValidatorProvider._();

final class UseCaseValidatorProvider
    extends
        $FunctionalProvider<
          UseCaseValidator,
          UseCaseValidator,
          UseCaseValidator
        >
    with $Provider<UseCaseValidator> {
  const UseCaseValidatorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'useCaseValidatorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$useCaseValidatorHash();

  @$internal
  @override
  $ProviderElement<UseCaseValidator> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UseCaseValidator create(Ref ref) {
    return useCaseValidator(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UseCaseValidator value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UseCaseValidator>(value),
    );
  }
}

String _$useCaseValidatorHash() => r'51c5bfa011be3c8de68c3b9b643161d63439faaf';
