// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WebView)
final webViewProvider = WebViewProvider._();

final class WebViewProvider extends $NotifierProvider<WebView, WebViewModel> {
  WebViewProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'webViewProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$webViewHash();

  @$internal
  @override
  WebView create() => WebView();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WebViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WebViewModel>(value),
    );
  }
}

String _$webViewHash() => r'777a5c7245e32f3334c676aa2bf18d953be1233a';

abstract class _$WebView extends $Notifier<WebViewModel> {
  WebViewModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<WebViewModel, WebViewModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<WebViewModel, WebViewModel>,
        WebViewModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
