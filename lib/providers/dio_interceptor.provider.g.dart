// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_interceptor.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dioInterceptor)
final dioInterceptorProvider = DioInterceptorProvider._();

final class DioInterceptorProvider extends $FunctionalProvider<
    InterceptorsWrapper,
    InterceptorsWrapper,
    InterceptorsWrapper> with $Provider<InterceptorsWrapper> {
  DioInterceptorProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dioInterceptorProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dioInterceptorHash();

  @$internal
  @override
  $ProviderElement<InterceptorsWrapper> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  InterceptorsWrapper create(Ref ref) {
    return dioInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InterceptorsWrapper value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InterceptorsWrapper>(value),
    );
  }
}

String _$dioInterceptorHash() => r'db8839028385dd972623750ea3a7b3dd9d8ca283';
