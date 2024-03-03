import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/widgets/section_label.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/i18n/strings.g.dart';

class VisualizationModal extends ConsumerWidget {
  const VisualizationModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: Theme.of(context).dialogBackgroundColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sort_rounded,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 24,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          t.bookmarks.filterSort,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SectionLabel(
                          label: t.bookmarks.readStatus,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 16,
                          ),
                        ),
                        SegmentedButtonSlide(
                          entries: [
                            SegmentedButtonSlideEntry(label: t.bookmarks.all),
                            SegmentedButtonSlideEntry(label: t.bookmarks.unread),
                            SegmentedButtonSlideEntry(label: t.bookmarks.read),
                          ],
                          selectedEntry: ref.watch(bookmarksProvider).readStatus.index,
                          onChange: (v) => ref.read(bookmarksProvider.notifier).setReadStatus(ReadStatus.values[v]),
                          colors: SegmentedButtonSlideColors(
                            barColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                            backgroundSelectedColor: Theme.of(context).colorScheme.primary,
                            foregroundSelectedColor: Theme.of(context).colorScheme.onPrimary,
                            foregroundUnselectedColor: Theme.of(context).colorScheme.onSurface,
                            hoverColor: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SectionLabel(
                          label: t.bookmarks.sorting,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 16,
                          ),
                        ),
                        SegmentedButtonSlide(
                          entries: [
                            SegmentedButtonSlideEntry(label: t.bookmarks.date, icon: Icons.schedule_rounded),
                            SegmentedButtonSlideEntry(label: t.bookmarks.title, icon: Icons.title_rounded),
                          ],
                          selectedEntry: ref.watch(bookmarksProvider).sortingType.index,
                          onChange: (v) => ref.read(bookmarksProvider.notifier).setSortingType(SortingType.values[v]),
                          colors: SegmentedButtonSlideColors(
                            barColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                            backgroundSelectedColor: Theme.of(context).colorScheme.primary,
                            foregroundSelectedColor: Theme.of(context).colorScheme.onPrimary,
                            foregroundUnselectedColor: Theme.of(context).colorScheme.onSurface,
                            hoverColor: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SegmentedButtonSlide(
                          entries: [
                            SegmentedButtonSlideEntry(
                              label: t.bookmarks.descendant,
                              icon: Icons.arrow_downward_rounded,
                            ),
                            SegmentedButtonSlideEntry(
                              label: t.bookmarks.ascendant,
                              icon: Icons.arrow_upward_rounded,
                            ),
                          ],
                          selectedEntry: ref.watch(bookmarksProvider).sortingWay.index,
                          onChange: (v) => ref.read(bookmarksProvider.notifier).setSortingWay(SortingWay.values[v]),
                          colors: SegmentedButtonSlideColors(
                            barColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                            backgroundSelectedColor: Theme.of(context).colorScheme.primary,
                            foregroundSelectedColor: Theme.of(context).colorScheme.onPrimary,
                            foregroundUnselectedColor: Theme.of(context).colorScheme.onSurface,
                            hoverColor: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(t.generic.close),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
