import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/search/provider/search.provider.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/screens/search/ui/bookmarks_search_list.dart';
import 'package:linkdy/screens/search/ui/tags_search_list.dart';

class Search extends ConsumerStatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  SearchState createState() => SearchState();
}

class SearchState extends ConsumerState<Search> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                pinned: true,
                floating: true,
                centerTitle: false,
                forceElevated: innerBoxIsScrolled,
                toolbarHeight: 70,
                title: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: TextFormField(
                    controller: ref.watch(searchProvider).searchController,
                    onChanged: (_) => ref.read(searchProvider.notifier).notifyOnChange(),
                    onFieldSubmitted: ref.read(searchProvider.notifier).setSearchTerm,
                    decoration: InputDecoration(
                      hintText: t.search.search,
                      prefixIcon: const Icon(Icons.search_rounded),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      suffixIcon: ref.watch(searchProvider).searchController.text != ""
                          ? IconButton(
                              onPressed: ref.read(searchProvider.notifier).clearSearch,
                              icon: const Icon(
                                Icons.close_rounded,
                                size: 20,
                              ),
                              tooltip: t.search.clearSearch,
                            )
                          : null,
                    ),
                    textInputAction: TextInputAction.search,
                  ),
                ),
                bottom: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.bookmarks_rounded),
                          const SizedBox(width: 8),
                          Text(t.search.bookmarks),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.label_rounded),
                          const SizedBox(width: 8),
                          Text(t.search.tags),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabController,
            children: const [
              BookmarksSearchList(),
              TagsSearchList(),
            ],
          ),
        ),
      ),
    );
  }
}
