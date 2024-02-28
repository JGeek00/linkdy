class BookmarksResponse {
  final int? count;
  final String? next;
  final String? previous;
  final List<Bookmark>? results;

  BookmarksResponse({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory BookmarksResponse.fromJson(Map<String, dynamic> json) => BookmarksResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json["results"] == null ? [] : List<Bookmark>.from(json["results"]!.map((x) => Bookmark.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Bookmark {
  final int? id;
  final String? url;
  final String? title;
  final String? description;
  final String? notes;
  final String? websiteTitle;
  final String? websiteDescription;
  final bool? isArchived;
  final bool? unread;
  final bool? shared;
  final List<String>? tagNames;
  final DateTime? dateAdded;
  final DateTime? dateModified;

  Bookmark({
    this.id,
    this.url,
    this.title,
    this.description,
    this.notes,
    this.websiteTitle,
    this.websiteDescription,
    this.isArchived,
    this.unread,
    this.shared,
    this.tagNames,
    this.dateAdded,
    this.dateModified,
  });

  factory Bookmark.fromJson(Map<String, dynamic> json) => Bookmark(
        id: json["id"],
        url: json["url"],
        title: json["title"],
        description: json["description"],
        notes: json["notes"],
        websiteTitle: json["website_title"],
        websiteDescription: json["website_description"],
        isArchived: json["is_archived"],
        unread: json["unread"],
        shared: json["shared"],
        tagNames: json["tag_names"] == null ? [] : List<String>.from(json["tag_names"]!.map((x) => x)),
        dateAdded: json["date_added"] == null ? null : DateTime.parse(json["date_added"]),
        dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "title": title,
        "description": description,
        "notes": notes,
        "website_title": websiteTitle,
        "website_description": websiteDescription,
        "is_archived": isArchived,
        "unread": unread,
        "shared": shared,
        "tag_names": tagNames == null ? [] : List<dynamic>.from(tagNames!.map((x) => x)),
        "date_added": dateAdded?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
      };

  Bookmark copyWith({
    int? id,
    String? url,
    String? title,
    String? description,
    String? notes,
    String? websiteTitle,
    String? websiteDescription,
    bool? isArchived,
    bool? unread,
    bool? shared,
    List<String>? tagNames,
    DateTime? dateAdded,
    DateTime? dateModified,
  }) =>
      Bookmark(
        id: id ?? this.id,
        url: url ?? this.url,
        title: title ?? this.title,
        description: description ?? this.description,
        notes: notes ?? this.notes,
        websiteTitle: websiteTitle ?? this.websiteTitle,
        websiteDescription: websiteDescription ?? this.websiteDescription,
        isArchived: isArchived ?? this.isArchived,
        unread: unread ?? this.unread,
        shared: shared ?? this.shared,
        tagNames: tagNames ?? this.tagNames,
        dateAdded: dateAdded ?? this.dateAdded,
        dateModified: dateModified ?? this.dateModified,
      );
}
