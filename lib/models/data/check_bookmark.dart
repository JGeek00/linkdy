class CheckBookmark {
  final dynamic bookmark;
  final Metadata? metadata;

  CheckBookmark({
    this.bookmark,
    this.metadata,
  });

  factory CheckBookmark.fromJson(Map<String, dynamic> json) => CheckBookmark(
        bookmark: json["bookmark"],
        metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "bookmark": bookmark,
        "metadata": metadata?.toJson(),
      };
}

class Metadata {
  final String? url;
  final String? title;
  final String? description;

  Metadata({
    this.url,
    this.title,
    this.description,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        url: json["url"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "title": title,
        "description": description,
      };
}
