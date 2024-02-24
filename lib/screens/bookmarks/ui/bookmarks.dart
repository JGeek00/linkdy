import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/add_bookmark_modal.dart';

import 'package:linkdy/i18n/strings.g.dart';

class BookmarksScreen extends ConsumerWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(bookmarksRequestProvider);

    final width = MediaQuery.of(context).size.width;

    void openAddModal() {
      showGeneralDialog(
        context: context,
        barrierColor: !(width > 700 || !(Platform.isAndroid || Platform.isIOS)) ? Colors.transparent : Colors.black54,
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(
              CurvedAnimation(parent: anim1, curve: Curves.easeInOutCubicEmphasized),
            ),
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => AddBookmarkModal(fullscreen: width <= 700),
      );
    }

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
              title: Text(t.bookmarks.bookmarks),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.refresh(bookmarksRequestProvider.future),
              child: CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  if (bookmarks.isLoading && !bookmarks.isRefreshing)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  if (bookmarks.value != null && bookmarks.value!.successful == false)
                    const SliverFillRemaining(
                      child: Center(
                        child: Icon(Icons.error),
                      ),
                    ),
                  if (bookmarks.value != null &&
                      bookmarks.value!.successful == true &&
                      bookmarks.value!.content!.results!.isEmpty)
                    const SliverFillRemaining(
                      child: Center(
                        child: Text("No bookmarks"),
                      ),
                    ),
                  if (bookmarks.value != null &&
                      bookmarks.value!.successful == true &&
                      bookmarks.value!.content!.results!.isNotEmpty)
                    SliverList.builder(
                      itemCount: bookmarks.value!.content!.results!.length + 1,
                      itemBuilder: (context, index) {
                        // index == bookmarks.value!.content!.results!.length -> itemCount + 1
                        if (index == bookmarks.value!.content!.results!.length) {
                          // Bottom gap for FAB
                          return const SizedBox(height: 80);
                        }
                        final link = bookmarks.value?.content?.results?[index];
                        return Column(
                          children: [
                            LinkItem(bookmark: link!),
                            if (index < bookmarks.value!.content!.results!.length - 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Divider(
                                  color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openAddModal,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
