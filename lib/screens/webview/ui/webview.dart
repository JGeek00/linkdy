import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/screens/webview/provider/webview.provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends ConsumerWidget {
  final Bookmark bookmark;

  const WebView({
    Key? key,
    required this.bookmark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(webViewProvider.notifier).initialize(bookmark.url!);
    });

    final webViewController = ref.watch(webViewProvider).webViewController;

    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title != "" ? bookmark.title! : bookmark.websiteTitle!),
      ),
      body: webViewController != null ? WebViewWidget(controller: ref.watch(webViewProvider).webViewController!) : null,
    );
  }
}
