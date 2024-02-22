import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:my_linkding/screens/webview/model/webview.model.dart';

part 'webview.provider.g.dart';

@riverpod
class WebView extends _$WebView {
  @override
  WebViewModel build() {
    return WebViewModel(
      webViewController: WebViewController(
        onPermissionRequest: (request) => request.deny(),
      )
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Update loading bar.
            },
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onWebResourceError: (WebResourceError error) {},
          ),
        ),
    );
  }

  void initialize(String url) {
    state.webViewController.loadRequest(Uri.parse(url));
  }
}
