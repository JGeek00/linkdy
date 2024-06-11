enum LoadStatus { loading, loaded, error }

enum ConnectionMethod { http, https }

enum SelectedTheme { system, light, dark }

enum AuthResult { success, invalidToken, other }

enum FilteredBookmarksMode { tag, shared, archived }

enum ReadStatus { all, unread, read }

enum SortingType { date, title }

enum SortingWay { descendant, ascendant }

enum OpenLinksBrowser { integrated, browserCustomTab, systemBrowser }

extension OpenLinksBrowserExtension on OpenLinksBrowser {
  static OpenLinksBrowser? fromString(String? value) {
    if (value == null || !OpenLinksBrowser.values.map((v) => v.toString()).contains(value)) {
      return null;
    }
    return OpenLinksBrowser.values.firstWhere((e) => e.toString() == value);
  }
}
