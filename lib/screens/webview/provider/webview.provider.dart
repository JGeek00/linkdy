import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:linkdy/screens/webview/model/webview.model.dart';

part 'webview.provider.g.dart';

@riverpod
class WebView extends _$WebView {
  @override
  WebViewModel build() {
    return WebViewModel(
      webViewController: WebViewController()
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (progress) {
              state.loadProgress = progress;
              ref.notifyListeners();
            },
            onUrlChange: (change) {
              state.webViewController.canGoBack().then((value) {
                state.canGoBack = value;
                ref.notifyListeners();
              });
              state.webViewController.canGoForward().then((value) {
                state.canGoForward = value;
                ref.notifyListeners();
              });
            },
          ),
        ),
    );
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
