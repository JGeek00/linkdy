import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/tags.dart';

class TagBookmarksResponse {
  final BookmarksResponse? bookmarksResponse;
  final Tag? tag;

  const TagBookmarksResponse({
    required this.bookmarksResponse,
    required this.tag,
  });
}
