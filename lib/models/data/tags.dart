class TagsResponse {
  final int? count;
  final int? next;
  final int? previous;
  final List<Tag>? results;

  TagsResponse({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory TagsResponse.fromJson(Map<String, dynamic> json) => TagsResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json["results"] == null ? [] : List<Tag>.from(json["results"]!.map((x) => Tag.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Tag {
  final int? id;
  final String? name;
  final DateTime? dateAdded;

  Tag({
    this.id,
    this.name,
    this.dateAdded,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        dateAdded: json["date_added"] == null ? null : DateTime.parse(json["date_added"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "date_added": dateAdded?.toIso8601String(),
      };
}
