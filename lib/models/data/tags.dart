class Tags {
  final int? count;
  final int? next;
  final int? previous;
  final List<Result>? results;

  Tags({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  final int? id;
  final String? name;
  final DateTime? dateAdded;

  Result({
    this.id,
    this.name,
    this.dateAdded,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
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
