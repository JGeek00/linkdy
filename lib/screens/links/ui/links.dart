import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/links/provider/links.provider.dart';

import 'package:linkdy/screens/links/ui/add_link_modal.dart';

import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class Links extends ConsumerWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(linksRequestProvider);

    final width = MediaQuery.of(context).size.width;

    String validateStrings(String? string1, String? string2) {
      if (string1 != null && string1.isNotEmpty) {
        return string1;
      } else if (string2 != null && string2.isNotEmpty) {
        return string2;
      } else {
        return "";
      }
    }

    String dateString(DateTime date) {
      String addZeros(int value) {
        return value.toString().padLeft(2, '0');
      }

      final today = DateTime.now();
      final yesterday = DateTime.now().subtract(const Duration(days: 1));

      if (date.day == today.day && date.month == today.month && date.year == today.year) {
        return t.links.dates.todayAt(time: "${addZeros(date.hour)}:${addZeros(date.minute)}");
      } else if (date.day == yesterday.day && date.month == yesterday.month && date.year == yesterday.year) {
        return t.links.dates.yesterdayAt(time: "${addZeros(date.hour)}:${addZeros(date.minute)}");
      } else {
        return "${date.day}/${date.month}/${date.year} - ${addZeros(date.hour)}:${addZeros(date.minute)}";
      }
    }

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
        pageBuilder: (context, animation, secondaryAnimation) => AddLinkModal(fullscreen: width <= 700),
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
              title: Text(t.links.links),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.refresh(linksRequestProvider.future),
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
                            ListTile(
                              onTap: () => ref.watch(routerProvider).push(RoutesPaths.webview, extra: link),
                              isThreeLine: true,
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 4),
                                child: Text(
                                  validateStrings(link?.title, link?.websiteTitle),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).colorScheme.onSurface,
                                  ),
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    validateStrings(link?.description, link?.websiteDescription),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          link?.tagNames?.map((tag) => "#$tag").join(" ") ?? '',
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      if (link?.dateModified != null) ...[
                                        if (link?.tagNames?.isNotEmpty == true)
                                          Container(
                                            width: 1,
                                            height: 12,
                                            margin: const EdgeInsets.symmetric(horizontal: 8),
                                            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                                          ),
                                        Text(
                                          dateString(link!.dateModified!),
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
