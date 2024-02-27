class PatchBookmarkData {
  final String? url;
  final String? title;
  final String? description;
  final bool? isArchived;
  final bool? unread;
  final bool? shared;
  final String? tagNames;
  final String? notes;

  const PatchBookmarkData({
    this.url,
    this.title,
    this.description,
    this.isArchived,
    this.unread,
    this.shared,
    this.tagNames,
    this.notes,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (url != null) {
      ret = {...ret, "url": url};
    }
    if (title != null) {
      ret = {...ret, "title": title};
    }
    if (description != null) {
      ret = {...ret, "description": description};
    }
    if (isArchived != null) {
      ret = {...ret, "is_archived": isArchived};
    }
    if (unread != null) {
      ret = {...ret, "unread": unread};
    }
    if (shared != null) {
      ret = {...ret, "shared": shared};
    }
    if (notes != null) {
      ret = {...ret, "notes": notes};
    }
    if (tagNames != null) {
      ret = {...ret, "notag_namestes": tagNames};
    }
    return ret;
  }
}
