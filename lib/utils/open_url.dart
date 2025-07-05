import 'dart:io';

import 'package:flutter_custom_tabs/flutter_custom_tabs.dart' as flutter_custom_tabs;
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

void openUrlCustomTab(String url) async {
  if (Platform.isAndroid || Platform.isIOS) {
    try {
      await flutter_custom_tabs.launchUrl(
        Uri.parse(url),
        customTabsOptions: const flutter_custom_tabs.CustomTabsOptions(
          shareState: flutter_custom_tabs.CustomTabsShareState.browserDefault,
          urlBarHidingEnabled: true,
          showTitle: true,
          browser: flutter_custom_tabs.CustomTabsBrowserConfiguration(prefersDefaultBrowser: true),
        ),
        safariVCOptions: const flutter_custom_tabs.SafariViewControllerOptions(
          barCollapsingEnabled: true,
          dismissButtonStyle: flutter_custom_tabs.SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  } else {
    try {
      url_launcher.launchUrl(Uri.parse(url));
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  }
}

void openUrlSystemBrowser(String url) async {
  if (Platform.isAndroid || Platform.isIOS) {
    try {
      await flutter_custom_tabs.launchUrl(
        Uri.parse(url),
        customTabsOptions: null,
        safariVCOptions: null,
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  } else {
    try {
      url_launcher.launchUrl(Uri.parse(url));
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
    }
  }
}
