import 'dart:async';

import 'package:sentry_flutter/sentry_flutter.dart';

FutureOr<SentryEvent?> sentryHandleError(SentryEvent event, Hint hint) async {
  // Remove logs coming from the favicon library
  final containsFavicon = event.exceptions
      ?.where(
        (e) => e.stackTrace?.frames.where((f) => f.fileName?.contains("favicon.dart") ?? false).isNotEmpty ?? false,
      )
      .isNotEmpty;
  if (containsFavicon == true) {
    return null;
  }

  return event;
}
