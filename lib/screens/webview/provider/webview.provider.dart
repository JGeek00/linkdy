import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/webview/model/webview.model.dart';

part 'webview.provider.g.dart';

@riverpod
class WebView extends _$WebView {
  @override
  WebViewModel build() {
    return WebViewModel();
  }

  void initializeController(InAppWebViewController controller) {
    state.inAppWebViewController = controller;
  }

  void setLoadProgress(int progress) {
    state.loadProgress = progress;
    ref.notifyListeners();
  }

  void setCanGoBack(bool value) {
    state.canGoBack = value;
    ref.notifyListeners();
  }

  void setCanGoForward(bool value) {
    state.canGoForward = value;
    ref.notifyListeners();
  }
}
