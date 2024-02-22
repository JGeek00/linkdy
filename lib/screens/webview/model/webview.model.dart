import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewModel {
  InAppWebViewController? inAppWebViewController;
  int loadProgress;
  bool canGoBack;
  bool canGoForward;

  WebViewModel({
    this.inAppWebViewController,
    this.loadProgress = 0,
    this.canGoBack = false,
    this.canGoForward = false,
  });
}
