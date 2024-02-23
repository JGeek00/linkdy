import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/settings/provider/customization.provider.dart';
import 'package:linkdy/screens/settings/ui/customization/color_item.dart';
import 'package:linkdy/screens/settings/ui/customization/theme_mode_button.dart';
import 'package:linkdy/utils/color_translation.dart';
import 'package:linkdy/widgets/custom_switch_list_tile.dart';
import 'package:linkdy/widgets/section_label.dart';

import 'package:linkdy/constants/colors.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/app_status_provider.dart';

class Customization extends ConsumerWidget {
  const Customization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.customization.customization),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SectionLabel(
              label: t.settings.customization.theme,
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 5),
            ),
            Column(
              children: [
                CustomSwitchListTile(
                  value: ref.watch(appStatusProvider).selectedTheme == SelectedTheme.system ? true : false,
                  onChanged: (value) => ref
                      .read(appStatusProvider.notifier)
                      .setTheme(value == true ? SelectedTheme.system : SelectedTheme.light),
                  title: t.settings.customization.systemDefined,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ThemeModeButton(
                      icon: Icons.light_mode,
                      value: 1,
                      selected: ref.watch(appStatusProvider).selectedTheme.index,
                      label: t.settings.customization.light,
                      onChanged: (value) => ref.read(appStatusProvider.notifier).setTheme(SelectedTheme.values[value]),
                      disabled: ref.watch(appStatusProvider).selectedTheme == SelectedTheme.system ? true : false,
                    ),
                    ThemeModeButton(
                      icon: Icons.dark_mode,
                      value: 2,
                      selected: ref.watch(appStatusProvider).selectedTheme.index,
                      label: t.settings.customization.dark,
                      onChanged: (value) => ref.read(appStatusProvider.notifier).setTheme(SelectedTheme.values[value]),
                      disabled: ref.watch(appStatusProvider).selectedTheme == SelectedTheme.system ? true : false,
                    ),
                  ],
                ),
              ],
            ),
            SectionLabel(
              label: t.settings.customization.color,
              padding: const EdgeInsets.only(top: 45, left: 16, right: 16, bottom: 5),
            ),
            if (ref.watch(appStatusProvider).supportsDynamicTheme)
              CustomSwitchListTile(
                value: ref.watch(appStatusProvider).useDynamicTheme,
                onChanged: ref.read(appStatusProvider.notifier).setUseDynamicTheme,
                title: t.settings.customization.useDynamicTheme,
              ),
            if (ref.watch(appStatusProvider).supportsDynamicTheme == false ||
                (ref.watch(appStatusProvider).supportsDynamicTheme == true &&
                    ref.watch(appStatusProvider).useDynamicTheme == false))
              Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
                child: Scrollbar(
                  controller: ref.watch(customizationProvider).scrollController,
                  thumbVisibility: Platform.isMacOS || Platform.isLinux || Platform.isWindows,
                  interactive: Platform.isMacOS || Platform.isLinux || Platform.isWindows,
                  thickness: Platform.isMacOS || Platform.isLinux || Platform.isWindows ? 8 : 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: ListView.builder(
                            controller: ref.watch(customizationProvider).scrollController,
                            scrollDirection: Axis.horizontal,
                            itemCount: colors.length,
                            padding: const EdgeInsets.all(0),
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Row(
                                  children: [
                                    ColorItem(
                                      index: index,
                                      total: colors.length,
                                      color: colors[index],
                                      numericValue: index,
                                      selectedValue: ref.watch(appStatusProvider).selectedColor,
                                      onChanged: ref.read(appStatusProvider.notifier).setSelectedColor,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 10),
                                      width: 1,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(1),
                                      ),
                                    ),
                                  ],
                                );
                              } else {
                                return ColorItem(
                                  index: index,
                                  total: colors.length,
                                  color: colors[index],
                                  numericValue: index,
                                  selectedValue: ref.watch(appStatusProvider).selectedColor,
                                  onChanged: ref.read(appStatusProvider.notifier).setSelectedColor,
                                );
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            colorTranslation(ref.watch(appStatusProvider).selectedColor),
                            style: TextStyle(color: Theme.of(context).listTileTheme.iconColor, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
