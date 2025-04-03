import 'package:flutter/material.dart';
import 'package:linkdy/i18n/strings.g.dart';

import 'package:linkdy/widgets/error_screen.dart';

class InvalidBookmarkScreen extends StatelessWidget {
  const InvalidBookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ErrorScreen(error: t.webview.invalidBookmarkData),
      ),
    );
  }
}
