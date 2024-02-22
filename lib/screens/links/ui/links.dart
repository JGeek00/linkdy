import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/links/provider/links.provider.dart';

import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class Links extends ConsumerWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(linksRequestProvider);

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
      final today = DateTime.now();
      final yesterday = DateTime.now().subtract(const Duration(days: 1));

      if (date.day == today.day && date.month == today.month && date.year == today.year) {
        return t.links.dates.todayAt(time: "${date.hour}:${date.minute}");
      } else if (date.day == yesterday.day && date.month == yesterday.month && date.year == yesterday.year) {
        return t.links.dates.yesterdayAt(time: "${date.hour}:${date.minute}");
      } else {
        return "${date.day}/${date.month}/${date.year} - ${date.hour}:${date.minute}";
      }
    }

    return Material(
      color: Colors.transparent,
      child: NestedScrollView(
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
                      itemCount: bookmarks.value?.content?.results?.length,
                      itemBuilder: (context, index) {
                        final link = bookmarks.value?.content?.results?[index];
                        return Column(
                          children: [
                            ListTile(
                              onTap: () => ref.watch(routerProvider).push(RoutesPaths.webview, extra: link),
                              isThreeLine: true,
                              title: Text(
                                validateStrings(link?.title, link?.websiteTitle),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              subtitle: Column(
                                children: [
                                  Text(
                                    validateStrings(link?.description, link?.websiteDescription),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
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
    );
  }
}
