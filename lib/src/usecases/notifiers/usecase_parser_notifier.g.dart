// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usecase_parser_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UseCaseParserNotifier)
const useCaseParserProvider = UseCaseParserNotifierFamily._();

final class UseCaseParserNotifierProvider
    extends
        $AsyncNotifierProvider<UseCaseParserNotifier, UseCaseValidationResult> {
  const UseCaseParserNotifierProvider._({
    required UseCaseParserNotifierFamily super.from,
    required UseCase super.argument,
  }) : super(
         retry: null,
         name: r'useCaseParserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$useCaseParserNotifierHash();

  @override
  String toString() {
    return r'useCaseParserProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  UseCaseParserNotifier create() => UseCaseParserNotifier();

  @override
  bool operator ==(Object other) {
    return other is UseCaseParserNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$useCaseParserNotifierHash() =>
    r'259306f73f83910f0a0a2e72f58ab70399ccc1d1';

final class UseCaseParserNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          UseCaseParserNotifier,
          AsyncValue<UseCaseValidationResult>,
          UseCaseValidationResult,
          FutureOr<UseCaseValidationResult>,
          UseCase
        > {
  const UseCaseParserNotifierFamily._()
    : super(
        retry: null,
        name: r'useCaseParserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UseCaseParserNotifierProvider call(UseCase useCase) =>
      UseCaseParserNotifierProvider._(argument: useCase, from: this);

  @override
  String toString() => r'useCaseParserProvider';
}

abstract class _$UseCaseParserNotifier
    extends $AsyncNotifier<UseCaseValidationResult> {
  late final _$args = ref.$arg as UseCase;
  UseCase get useCase => _$args;

  FutureOr<UseCaseValidationResult> build(UseCase useCase);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<UseCaseValidationResult>,
              UseCaseValidationResult
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UseCaseValidationResult>,
                UseCaseValidationResult
              >,
              AsyncValue<UseCaseValidationResult>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
