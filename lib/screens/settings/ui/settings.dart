import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_split_view/flutter_split_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:linkdy/screens/settings/ui/customization/customization.dart';
import 'package:linkdy/screens/settings/provider/settings.provider.dart';
import 'package:linkdy/screens/settings/ui/general_settings/general_settings.dart';
import 'package:linkdy/widgets/section_label.dart';
import 'package:linkdy/widgets/custom_list_tile.dart';
import 'package:linkdy/widgets/custom_settings_tile.dart';

import 'package:linkdy/providers/app_info.provider.dart';
import 'package:linkdy/utils/open_url.dart';
import 'package:linkdy/constants/strings.dart';
import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/urls.dart';
import 'package:linkdy/i18n/strings.g.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > Sizes.tabletBreakpoint) {
          return const SplitView.material(
            hideDivider: true,
            flexWidth: FlexWidth(mainViewFlexWidth: 1, secondaryViewFlexWidth: 2),
            child: _List(tabletView: true),
          );
        } else {
          return const _List(tabletView: false);
        }
      },
    );
  }
}

class _List extends ConsumerWidget {
  final bool tabletView;

  const _List({
    required this.tabletView,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar.large(
              pinned: true,
              floating: true,
              centerTitle: false,
              forceElevated: innerBoxIsScrolled,
              title: Text(t.settings.settings),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverList.list(
                  children: [
                    SectionLabel(label: t.settings.appSettings),
                    _SettingsTile(
                      icon: Icons.palette_rounded,
                      title: t.settings.customization.customization,
                      subtitle: t.settings.customization.customizationDescription,
                      thisItem: 0,
                      twoColumns: tabletView,
                      screenToNavigate: const Customization(),
                    ),
                    _SettingsTile(
                      icon: Icons.settings_rounded,
                      title: t.settings.generalSettings.generalSettings,
                      subtitle: t.settings.generalSettings.generalSettingsDescription,
                      thisItem: 1,
                      screenToNavigate: const GeneralSettings(),
                      twoColumns: tabletView,
                    ),
                    SectionLabel(label: t.settings.aboutApp),
                    CustomListTile(
                      title: t.settings.linkdingRepository,
                      subtitle: t.settings.linkdingRepositoryDescription,
                      trailing: Icon(
                        Icons.open_in_new_rounded,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      onTap: () => openUrlCustomTab(Urls.linkdingRepo),
                    ),
                    CustomListTile(
                      title: t.settings.appVersion,
                      subtitle: ref.watch(appInfoProvider).version,
                    ),
                    CustomListTile(
                      title: t.settings.createdBy,
                      subtitle: Strings.createdBy,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (Platform.isAndroid)
                            IconButton(
                              onPressed: () => openUrlCustomTab(Urls.playStoreLink),
                              icon: SvgPicture.asset(
                                'assets/resources/google-play.svg',
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                                width: 30,
                                height: 30,
                              ),
                              tooltip: t.settings.visitGooglePlay,
                            ),
                          IconButton(
                            onPressed: () => openUrlCustomTab(Urls.gitHubRepo),
                            icon: SvgPicture.asset(
                              'assets/resources/github.svg',
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                              width: 30,
                              height: 30,
                            ),
                            tooltip: t.settings.visitGitHubRepo,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SettingsTile extends ConsumerWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget screenToNavigate;
  final int thisItem;
  final bool twoColumns;

  const _SettingsTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.screenToNavigate,
    required this.thisItem,
    required this.twoColumns,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (twoColumns) {
      return CustomSettingsTile(
        title: title,
        subtitle: subtitle,
        icon: icon,
        thisItem: thisItem,
        selectedItem: ref.watch(settingsProvider).selectedScreen,
        onTap: () {
          ref.read(settingsProvider.notifier).setSelectedScreen(thisItem);
          SplitView.of(context).setSecondary(screenToNavigate);
        },
      );
    } else {
      return CustomListTile(
        title: title,
        subtitle: subtitle,
        icon: icon,
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => screenToNavigate));
        },
      );
    }
  }
}
