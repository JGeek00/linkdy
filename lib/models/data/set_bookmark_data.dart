class SetBookmarkData {
  final String url;
  final String title;
  final String description;
  final bool isArchived;
  final bool unread;
  final bool shared;
  final String tagNames;
  final String notes;

  const SetBookmarkData({
    required this.url,
    required this.title,
    required this.description,
    required this.isArchived,
    required this.unread,
    required this.shared,
    required this.tagNames,
    required this.notes,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      "url": url,
      "title": title,
      "description": description,
      "is_archived": isArchived,
      "unread": unread,
      "shared": shared,
      "notes": notes,
    };
    if (tagNames != "") {
      ret = {
        ...ret,
        "tag_names": tagNames,
      };
    }
    return ret;
  }
}
