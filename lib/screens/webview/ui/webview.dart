import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share_plus/share_plus.dart';

import 'package:linkdy/screens/webview/provider/webview.provider.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/utils/copy_clipboard.dart';
import 'package:linkdy/utils/open_url.dart';

class WebViewScreen extends HookConsumerWidget {
  final Bookmark bookmark;

  const WebViewScreen({
    super.key,
    required this.bookmark,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        ref.read(webViewProvider.notifier).loadNewUrl(bookmark.url!);
        return null;
      },
      [bookmark],
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookmark.title != "" ? bookmark.title! : bookmark.websiteTitle!,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              bookmark.url!,
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.maxFinite, 0),
          child: ref.watch(webViewProvider).loadProgress < 100
              ? const LinearProgressIndicator()
              : const SizedBox(
                  height: 4,
                ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: ref.watch(webViewProvider).webViewController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: ref.watch(webViewProvider).canGoBack == true
                            ? () => ref.watch(webViewProvider).webViewController.goBack()
                            : null,
                        icon: const Icon(Icons.arrow_back_rounded),
                        tooltip: t.webview.goForward,
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        onPressed: ref.watch(webViewProvider).canGoForward == true
                            ? () => ref.watch(webViewProvider).webViewController.goForward()
                            : null,
                        icon: const Icon(Icons.arrow_forward_rounded),
                        tooltip: t.webview.goForward,
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        onPressed: () => ref.watch(webViewProvider).webViewController.reload(),
                        icon: const Icon(Icons.refresh_rounded),
                        tooltip: t.webview.reload,
                      ),
                    ],
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () => Share.shareUri(Uri.parse(bookmark.url!)),
                        child: Row(
                          children: [
                            const Icon(Icons.share_rounded),
                            const SizedBox(width: 12),
                            Flexible(child: Text(t.webview.share)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => copyToClipboard(
                          key: ScaffoldMessengerKeys.webview,
                          value: bookmark.url!,
                          successMessage: t.webview.linkCopiedClipboard,
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.copy_rounded),
                            const SizedBox(width: 12),
                            Flexible(child: Text(t.webview.copyLinkClipboard)),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => openUrl(bookmark.url!),
                        child: Row(
                          children: [
                            const Icon(Icons.open_in_browser_rounded),
                            const SizedBox(width: 12),
                            Flexible(child: Text(t.webview.openInSystemBrowser)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
