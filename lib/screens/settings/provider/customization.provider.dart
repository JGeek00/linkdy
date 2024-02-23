import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/settings/model/customization.model.dart';

part 'customization.provider.g.dart';

@riverpod
class Customization extends _$Customization {
  @override
  CustomizationModel build() {
    return CustomizationModel(
      scrollController: ScrollController(),
    );
  }
}
