import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/links/provider/add_link.provider.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/i18n/strings.g.dart';

class AddLinkModal extends ConsumerStatefulWidget {
  const AddLinkModal({Key? key}) : super(key: key);

  @override
  AddLinkModalState createState() => AddLinkModalState();
}

class AddLinkModalState extends ConsumerState<AddLinkModal> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween(
      begin: 0.0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(addLinkProvider);

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(28), topRight: Radius.circular(28)),
          color: Theme.of(context).dialogBackgroundColor,
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 24),
                      Icon(
                        Icons.add_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 24,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        t.links.addLink.addLink,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          controller: provider.urlController,
                          onChanged: ref.read(addLinkProvider.notifier).validateUrl,
                          enabled: provider.checkBookmarkLoadStatus != LoadStatus.loading,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.link_rounded),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            errorText: provider.urlError,
                            labelText: t.links.addLink.url,
                          ),
                        ),
                      ),
                      if (provider.checkBookmarkLoadStatus == LoadStatus.loading)
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 12,
                                width: 12,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(t.links.addLink.checkingUrl),
                            ],
                          ),
                        ),
                      if (provider.checkBookmark != null) ...[
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          child: Divider(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: TextFormField(
                            controller: provider.titleController,
                            // onChanged: ref.read(addLinkProvider.notifier).validateUrl,
                            // enabled: provider.checkBookmarkLoadStatus != LoadStatus.loading,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.title_rounded),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              errorText: provider.urlError,
                              labelText: t.links.addLink.title,
                              hintText: provider.checkBookmark?.metadata?.title,
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              helperText: t.links.addLink.leaveEmptyUseWebsiteTitle,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: TextFormField(
                            controller: provider.descriptionController,
                            // onChanged: ref.read(addLinkProvider.notifier).validateUrl,
                            // enabled: provider.checkBookmarkLoadStatus != LoadStatus.loading,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.description_rounded),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              errorText: provider.urlError,
                              labelText: t.links.addLink.description,
                              hintText: provider.checkBookmark?.metadata?.description,
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              helperText: t.links.addLink.leaveEmptyUseWebsiteDescription,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: ExpandablePanel(
                            controller: provider.expandableController,
                            collapsed: ListTile(
                              onTap: () {
                                _animationController.animateTo(provider.expandableController.expanded == true ? 0 : 1);
                                provider.expandableController.toggle();
                              },
                              title: Text(t.links.addLink.addNotes),
                              trailing: RotationTransition(
                                turns: _animation,
                                child: Icon(
                                  Icons.expand_more_rounded,
                                  size: 26,
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(0),
                            ),
                            expanded: Column(
                              children: [
                                ListTile(
                                  onTap: () {
                                    _animationController.animateTo(
                                      provider.expandableController.expanded == true ? 0 : 1,
                                    );
                                    provider.expandableController.toggle();
                                  },
                                  title: Text(t.links.addLink.addNotes),
                                  trailing: RotationTransition(
                                    turns: _animation,
                                    child: Icon(
                                      Icons.expand_more_rounded,
                                      size: 26,
                                      color: Theme.of(context).colorScheme.secondary,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(0),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  height: 130,
                                  child: TextFormField(
                                    controller: provider.notesController,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.note_rounded),
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: t.links.addLink.notes,
                                    ),
                                    autocorrect: false,
                                    expands: true,
                                    minLines: null,
                                    maxLines: null,
                                    textAlignVertical: TextAlignVertical.top,
                                  ),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ),
                        SwitchListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                          title: Text(t.links.addLink.markAsUnread),
                          value: provider.markAsUnread,
                          onChanged: ref.read(addLinkProvider.notifier).updateMarkAsUnread,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(t.generic.cancel),
                    ),
                    const SizedBox(width: 8),
                    if (provider.checkBookmark == null)
                      TextButton(
                        onPressed: provider.checkBookmarkLoadStatus != LoadStatus.loading
                            ? ref.read(addLinkProvider.notifier).checkUrlDetails
                            : null,
                        child: Text(t.generic.next),
                      ),
                    if (provider.checkBookmark != null)
                      TextButton(
                        onPressed: ref.read(addLinkProvider.notifier).addBookmark,
                        child: Text(t.generic.confirm),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
