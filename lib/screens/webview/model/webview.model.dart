import 'package:webview_flutter/webview_flutter.dart';

class WebViewModel {
  final WebViewController webViewController;
  int loadProgress;
  bool canGoBack;
  bool canGoForward;

  WebViewModel({
    required this.webViewController,
    this.loadProgress = 0,
    this.canGoBack = false,
    this.canGoForward = false,
  });
}
