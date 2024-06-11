import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/app_status.provider.dart';

class DefaultTagsScreen extends ConsumerStatefulWidget {
  const DefaultTagsScreen({super.key});

  @override
  DefaultTagsScreenState createState() => DefaultTagsScreenState();
}

class DefaultTagsScreenState extends ConsumerState<DefaultTagsScreen> {
  final _newTagController = TextEditingController();
  bool _addEnabled = false;

  @override
  Widget build(BuildContext context) {
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
              title: Text(t.settings.generalSettings.defaultTags.defaultTags),
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
                    if (ref.watch(appStatusProvider).defaultTags.isNotEmpty)
                      ...ref.watch(appStatusProvider).defaultTags.map(
                            (tag) => ListTile(
                              title: Text(tag),
                              trailing: IconButton(
                                onPressed: () => ref.read(appStatusProvider.notifier).removeDefaultTag(tag),
                                icon: const Icon(Icons.delete_rounded),
                                tooltip: t.settings.generalSettings.defaultTags.removeThisTag,
                              ),
                            ),
                          ),
                    if (ref.watch(appStatusProvider).defaultTags.isEmpty)
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            t.settings.generalSettings.defaultTags.noDefaultTags,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _newTagController,
                              onChanged: (v) => setState(() => v != "" ? _addEnabled = true : _addEnabled = false),
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.sell_rounded),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                labelText: t.settings.generalSettings.defaultTags.newTag,
                              ),
                              onFieldSubmitted: (value) {
                                ref.read(appStatusProvider.notifier).addDefaultTag(value);
                                setState(() {
                                  _newTagController.text = "";
                                  _addEnabled = false;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          IconButton(
                            onPressed: _addEnabled
                                ? () {
                                    ref.read(appStatusProvider.notifier).addDefaultTag(_newTagController.text);
                                    setState(() {
                                      _newTagController.text = "";
                                      _addEnabled = false;
                                    });
                                  }
                                : null,
                            icon: const Icon(Icons.add_rounded),
                            tooltip: t.settings.generalSettings.defaultTags.addTag,
                          ),
                          const SizedBox(width: 8),
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
