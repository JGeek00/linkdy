import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'receive_sharing_intent_url.provider.g.dart';

@Riverpod(keepAlive: true)
class ReceiveSharingIntentUrl extends _$ReceiveSharingIntentUrl {
  @override
  String? build() {
    return null;
  }

  void setValue(String? value) {
    state = value;
    ref.notifyListeners();
  }
}
