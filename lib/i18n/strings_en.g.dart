///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsGenericEn generic = TranslationsGenericEn._(_root);
	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);
	late final TranslationsBookmarksEn bookmarks = TranslationsBookmarksEn._(_root);
	late final TranslationsTagsEn tags = TranslationsTagsEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsWebviewEn webview = TranslationsWebviewEn._(_root);
	late final TranslationsColorsEn colors = TranslationsColorsEn._(_root);
}

// Path: generic
class TranslationsGenericEn {
	TranslationsGenericEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get confirm => 'Confirm';
	String get cancel => 'Cancel';
	String get next => 'Next';
	String get save => 'Save';
	String get close => 'Close';
	String get error => 'Error';
	String get optional => 'Optional';
	String get authTokenNotValid => 'Your authorization token is not valid anymore. Please, reauthenticate.';
	String get options => 'Options';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to Linkdy';
	String get subtitle => 'An application to manage your bookmarks.';
	String get start => 'Start';
	String get next => 'Next';
	String get previous => 'Previous';
	String get serverRequired => 'Server required';
	String get serverRequiredDescription => 'Linkdy it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.';
	String get installationInstructions => 'Check the installation instructions on the official GitHub repository.';
	String get serverRunningConfirmation => 'I confirm that I have an instance of the Linkding server already running.';
	String get createConnection => 'Create a connection';
	String get createConnectionSubtitle => 'Enter all the required details to create a connection to your server.';
	String get ipAddressOrDomain => 'IP address or domain';
	String get port => 'Port';
	String get path => 'Path';
	String get invalidPath => 'Invalid path';
	String get token => 'Token';
	String get required => 'Required';
	String get serverDetails => 'Server details';
	String get authentication => 'Authentication';
	String get testConnectionUrl => 'Test connection url';
	String get connectionServerEstablished => 'Connection with server established';
	String get testingConnection => 'Testing connection...';
	String get connectionServerFailed => 'Connection with server failed';
	String get connect => 'Connect';
	String get connecting => 'Connecting...';
	String get cannotConnectToServer => 'Cannot connect to the server.';
	String get invalidToken => 'Invalid token.';
	String get invalidIpDomain => 'Invalid IP address or domain';
	String get invalidPort => 'Invalid port';
	String get tokenRequired => 'Token is required';
}

// Path: bookmarks
class TranslationsBookmarksEn {
	TranslationsBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get bookmarks => 'Bookmarks';
	String get noBookmarksAdded => 'No bookmarks added';
	String get cannotLoadBookmarks => 'Cannot load the bookmarks';
	late final TranslationsBookmarksDatesEn dates = TranslationsBookmarksDatesEn._(_root);
	String get shared => 'Shared';
	String get archived => 'Archived';
	String get showOnlyRead => 'Show only read';
	String get showOnlyUnread => 'Show only unread';
	String get showAllBookmarks => 'Show all bookmarks';
	String get readStatus => 'Read status';
	String get all => 'All';
	String get unread => 'Unread';
	String get read => 'Read';
	String get filterSort => 'Filter and sort';
	String get sorting => 'Sorting';
	String get date => 'Date';
	String get title => 'Title';
	String get ascendant => 'Ascendant';
	String get descendant => 'Descendant';
	late final TranslationsBookmarksAddBookmarkEn addBookmark = TranslationsBookmarksAddBookmarkEn._(_root);
	late final TranslationsBookmarksSearchEn search = TranslationsBookmarksSearchEn._(_root);
	late final TranslationsBookmarksBookmarkOptionsEn bookmarkOptions = TranslationsBookmarksBookmarkOptionsEn._(_root);
	late final TranslationsBookmarksShareOptionsEn shareOptions = TranslationsBookmarksShareOptionsEn._(_root);
}

// Path: tags
class TranslationsTagsEn {
	TranslationsTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tags => 'Tags';
	String created({required Object created}) => 'Created: ${created}';
	late final TranslationsTagsCreateTagEn createTag = TranslationsTagsCreateTagEn._(_root);
	late final TranslationsTagsFilteredBookmarksEn filteredBookmarks = TranslationsTagsFilteredBookmarksEn._(_root);
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get settings => 'Settings';
	String get appSettings => 'App settings';
	String get aboutApp => 'About the app';
	String get appVersion => 'App version';
	String get createdBy => 'Created by';
	String get visitGooglePlay => 'Visit the application page at Google Play';
	String get visitGitHubRepo => 'Visit the application repository at GitHub';
	String get linkdingRepository => 'Linkding repository';
	String get linkdingRepositoryDescription => 'Link to the Linkding repository on GitHub';
	String get moreInfoApp => 'More information about the app';
	String get moreInfoAppDescription => 'Link to the app\'s information page';
	String get moreApps => 'My other apps';
	String get moreAppsDescription => 'More apps, contact, donations and more';
	late final TranslationsSettingsCustomizationEn customization = TranslationsSettingsCustomizationEn._(_root);
	late final TranslationsSettingsGeneralSettingsEn generalSettings = TranslationsSettingsGeneralSettingsEn._(_root);
}

// Path: webview
class TranslationsWebviewEn {
	TranslationsWebviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get goBack => 'Go back';
	String get goForward => 'Go forward';
	String get reload => 'Reload';
	String get openInSystemBrowser => 'Open in system browser';
	String get copyLinkClipboard => 'Copy link to clipboard';
	String get linkCopiedClipboard => 'Link copied to the clipboard.';
	String get share => 'Share';
	String get invalidBookmarkData => 'The bookmark has invalid data or it\'s corrupted.';
}

// Path: colors
class TranslationsColorsEn {
	TranslationsColorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get red => 'Red';
	String get green => 'Green';
	String get blue => 'Blue';
	String get yellow => 'Yellow';
	String get orange => 'Orange';
	String get brown => 'Brown';
	String get cyan => 'Cyan';
	String get purple => 'Purple';
	String get pink => 'Pink';
	String get deepOrange => 'Deep orange';
	String get indigo => 'Indigo';
}

// Path: bookmarks.dates
class TranslationsBookmarksDatesEn {
	TranslationsBookmarksDatesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String todayAt({required Object time}) => 'Today, ${time}';
	String yesterdayAt({required Object time}) => 'Yesterday, ${time}';
}

// Path: bookmarks.addBookmark
class TranslationsBookmarksAddBookmarkEn {
	TranslationsBookmarksAddBookmarkEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addBookmark => 'Add new bookmark';
	String get editBookmark => 'Edit bookmark';
	String get bookmarkUrl => 'Bookmark URL';
	String get bookmarkDetails => 'Bookmark details';
	String get validateUrl => 'Validate URL';
	String get urlValid => 'The URL is valid';
	String get urlNotValid => 'The URL is not valid';
	String get cannotCheckUrl => 'The URL couldn\'t be checked';
	String get invalidUrl => 'Invalid URL';
	String get url => 'URL';
	String get checkingUrl => 'Checking URL...';
	String get title => 'Title';
	String get description => 'Description';
	String get markAsUnread => 'Mark as unread';
	String get markAsUnreadDescription => 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.';
	String get notes => 'Notes';
	String get addNotes => 'Add notes';
	String get tags => 'Tags';
	String get noTagsAdded => 'No tags added';
	String get tagNoWhitespaces => 'Tag cannot contain whitespaces';
	String get addTag => 'Add tag';
	String get others => 'Others';
	String get savingBookmark => 'Saving bookmark...';
	String get bookmarkSavedSuccessfully => 'Bookmark saved successfully.';
	String get errorSavingBookmark => 'An error occured when saving the new bookmark.';
	String get leaveEmptyUseWebsiteTitle => 'Leave empty to use the website\'s title.';
	String get leaveEmptyUseWebsiteDescription => 'Leave empty to use the website\'s description.';
	String get share => 'Share';
	String get shareDescription => 'Share this bookmark with other registered users and anonymous users.';
	String get urlAlreadyBookmarked => 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.';
}

// Path: bookmarks.search
class TranslationsBookmarksSearchEn {
	TranslationsBookmarksSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get searchBookmarks => 'Search bookmarks';
	String get clearSearch => 'Clear search';
	String get inputSearchTerm => 'Input a search term';
	String get cannotSearchError => 'Cannot search content due to an error';
	String get inputtedSearchTermNoResults => 'The inputted search term doesn\'t have any results';
}

// Path: bookmarks.bookmarkOptions
class TranslationsBookmarksBookmarkOptionsEn {
	TranslationsBookmarksBookmarkOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get edit => 'Edit';
	String get delete => 'Delete';
	String get read => 'Read';
	String get unread => 'Unread';
	String get markAsUnread => 'Mark as unread';
	String get markAsRead => 'Mark as read';
	String get shareOptions => 'Share options';
	String get shared => 'Shared';
	String get archive => 'Archive';
	String get unarchive => 'Unarchive';
	String get deletingBookmark => 'Deleting bookmark...';
	String get bookmarkDeleted => 'Bookmark deleted successfully';
	String get bookmarkNotDeleted => 'The bookmark couldn\'t be deleted due to an error.';
	String get deleteBookmark => 'Delete bookmark';
	String get followingBookmarkDeleted => 'The following bookmark will be deleted:';
	String get markingAsRead => 'Marking as read...';
	String get markingAsUnead => 'Marking as unread...';
	String get markedAsReadSuccessfully => 'Bookmark marked as read successfully.';
	String get markedAsUnreadSuccessfully => 'Bookmark marked as unread successfully.';
	String get bookmarkNotMarkedAsRead => 'The bookmark couldn\'t be marked as read.';
	String get bookmarkNotMarkedAsUnread => 'The bookmark couldn\'t be marked as unread.';
	String get archivingBookmark => 'Archiving bookmark...';
	String get unarchivingBookmark => 'Unarchiving bookmark...';
	String get bookmarkArchivedSuccessfully => 'Bookmark archived successfully.';
	String get bookmarkUnrchivedSuccessfully => 'Bookmark unarchived successfully.';
	String get bookmarkNotArchived => 'The bookmark couldn\'t be archived.';
	String get bookmarkNotUnrchived => 'The bookmark couldn\'t be unarchived.';
	String get shareThirdPartyApp => 'Share using a third party app';
	String get shareInternally => 'Share internally';
	String get unshareInternally => 'Unshare internally';
}

// Path: bookmarks.shareOptions
class TranslationsBookmarksShareOptionsEn {
	TranslationsBookmarksShareOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get shareOptions => 'Share options';
	String get shareInternally => 'Share internally';
	String get unshareInternally => 'Unshare internally';
	String get shareInternallyDescription => 'Share internally with the rest of the users of this Linkding instance';
	String get unshareInternallyDescription => 'Unshare this internally shared bookmark';
	String get shareExternally => 'Share bookmark URL externally';
	String get shareExternallyDescription => 'Share the bookmark URL externally using a third party application';
	String get sharingBookmark => 'Sharing bookmark...';
	String get unsharingBookmark => 'Unsharing bookmark...';
	String get bookmarkSharedSuccessfully => 'Bookmark shared successfully.';
	String get bookmarkNotShared => 'Bookmark couldn\'t be shared.';
	String get bookmarkUnsharedSuccessfully => 'Bookmark unshared successfully.';
	String get bookmarkNotUnshared => 'Bookmark couldn\'t be unshared.';
}

// Path: tags.createTag
class TranslationsTagsCreateTagEn {
	TranslationsTagsCreateTagEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createTag => 'Create tag';
	String get name => 'Name';
	String get creatingTag => 'Creating tag...';
	String get errorCreatingTag => 'An error occured when creating the tag.';
}

// Path: tags.filteredBookmarks
class TranslationsTagsFilteredBookmarksEn {
	TranslationsTagsFilteredBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noBookmarksWithThisTag => 'There are no bookmarks with this tag';
	String get noArchivedBookmarks => 'There are no archived bookmarks';
	String get noSharedBookmarks => 'There are no shared bookmarks';
}

// Path: settings.customization
class TranslationsSettingsCustomizationEn {
	TranslationsSettingsCustomizationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get customization => 'Customization';
	String get customizationDescription => 'Set the app theme and color palette.';
	String get theme => 'Theme';
	String get light => 'Light';
	String get dark => 'Dark';
	String get systemDefined => 'System defined';
	String get color => 'Color';
	String get useDynamicTheme => 'Use dynamic theme';
}

// Path: settings.generalSettings
class TranslationsSettingsGeneralSettingsEn {
	TranslationsSettingsGeneralSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get generalSettings => 'General settings';
	String get generalSettingsDescription => 'General tweaks for the application.';
	String get bookmarks => 'Bookmarks';
	String get showFavicon => 'Show favicon';
	String get showFaviconDescription => 'Show the website\'s favicon on each bookmark.';
	String get disconnectFromServer => 'Disconnect from server';
	late final TranslationsSettingsGeneralSettingsDisconnectModalEn disconnectModal = TranslationsSettingsGeneralSettingsDisconnectModalEn._(_root);
	String get useInAppBrowser => 'Use in app browser';
	String get useInAppBrowserDescription => 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.';
	String get openLinksWith => 'Open links with...';
	String get internalBrowser => 'App internal browser';
	String get browserCustomTab => 'Browser custom tab';
	String get systemBrowser => 'System browser';
	String get tags => 'Tags';
	late final TranslationsSettingsGeneralSettingsDefaultTagsEn defaultTags = TranslationsSettingsGeneralSettingsDefaultTagsEn._(_root);
	String get others => 'Others';
	String get setMarkAsUnreadDefault => 'Set mark as unread by default';
	String get setMarkAsUnreadDefaultDescription => 'Set the mark as unread option by default when creating a new bookmark.';
}

// Path: settings.generalSettings.disconnectModal
class TranslationsSettingsGeneralSettingsDisconnectModalEn {
	TranslationsSettingsGeneralSettingsDisconnectModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Disconnect';
	String get description => 'Are you sure you want to disconnect from the server?\nYou will be redirected to the initial setup.';
}

// Path: settings.generalSettings.defaultTags
class TranslationsSettingsGeneralSettingsDefaultTagsEn {
	TranslationsSettingsGeneralSettingsDefaultTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get defaultTags => 'Default tags';
	String get defaultTagsDescription => 'Define a list of tags that will be added by default when creating a bookmark';
	String get newTag => 'New tag';
	String get addTag => 'Add tag';
	String get removeThisTag => 'Remove this tag';
	String get noDefaultTags => 'There are no default tags';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'generic.confirm': return 'Confirm';
			case 'generic.cancel': return 'Cancel';
			case 'generic.next': return 'Next';
			case 'generic.save': return 'Save';
			case 'generic.close': return 'Close';
			case 'generic.error': return 'Error';
			case 'generic.optional': return 'Optional';
			case 'generic.authTokenNotValid': return 'Your authorization token is not valid anymore. Please, reauthenticate.';
			case 'generic.options': return 'Options';
			case 'onboarding.title': return 'Welcome to Linkdy';
			case 'onboarding.subtitle': return 'An application to manage your bookmarks.';
			case 'onboarding.start': return 'Start';
			case 'onboarding.next': return 'Next';
			case 'onboarding.previous': return 'Previous';
			case 'onboarding.serverRequired': return 'Server required';
			case 'onboarding.serverRequiredDescription': return 'Linkdy it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.';
			case 'onboarding.installationInstructions': return 'Check the installation instructions on the official GitHub repository.';
			case 'onboarding.serverRunningConfirmation': return 'I confirm that I have an instance of the Linkding server already running.';
			case 'onboarding.createConnection': return 'Create a connection';
			case 'onboarding.createConnectionSubtitle': return 'Enter all the required details to create a connection to your server.';
			case 'onboarding.ipAddressOrDomain': return 'IP address or domain';
			case 'onboarding.port': return 'Port';
			case 'onboarding.path': return 'Path';
			case 'onboarding.invalidPath': return 'Invalid path';
			case 'onboarding.token': return 'Token';
			case 'onboarding.required': return 'Required';
			case 'onboarding.serverDetails': return 'Server details';
			case 'onboarding.authentication': return 'Authentication';
			case 'onboarding.testConnectionUrl': return 'Test connection url';
			case 'onboarding.connectionServerEstablished': return 'Connection with server established';
			case 'onboarding.testingConnection': return 'Testing connection...';
			case 'onboarding.connectionServerFailed': return 'Connection with server failed';
			case 'onboarding.connect': return 'Connect';
			case 'onboarding.connecting': return 'Connecting...';
			case 'onboarding.cannotConnectToServer': return 'Cannot connect to the server.';
			case 'onboarding.invalidToken': return 'Invalid token.';
			case 'onboarding.invalidIpDomain': return 'Invalid IP address or domain';
			case 'onboarding.invalidPort': return 'Invalid port';
			case 'onboarding.tokenRequired': return 'Token is required';
			case 'bookmarks.bookmarks': return 'Bookmarks';
			case 'bookmarks.noBookmarksAdded': return 'No bookmarks added';
			case 'bookmarks.cannotLoadBookmarks': return 'Cannot load the bookmarks';
			case 'bookmarks.dates.todayAt': return ({required Object time}) => 'Today, ${time}';
			case 'bookmarks.dates.yesterdayAt': return ({required Object time}) => 'Yesterday, ${time}';
			case 'bookmarks.shared': return 'Shared';
			case 'bookmarks.archived': return 'Archived';
			case 'bookmarks.showOnlyRead': return 'Show only read';
			case 'bookmarks.showOnlyUnread': return 'Show only unread';
			case 'bookmarks.showAllBookmarks': return 'Show all bookmarks';
			case 'bookmarks.readStatus': return 'Read status';
			case 'bookmarks.all': return 'All';
			case 'bookmarks.unread': return 'Unread';
			case 'bookmarks.read': return 'Read';
			case 'bookmarks.filterSort': return 'Filter and sort';
			case 'bookmarks.sorting': return 'Sorting';
			case 'bookmarks.date': return 'Date';
			case 'bookmarks.title': return 'Title';
			case 'bookmarks.ascendant': return 'Ascendant';
			case 'bookmarks.descendant': return 'Descendant';
			case 'bookmarks.addBookmark.addBookmark': return 'Add new bookmark';
			case 'bookmarks.addBookmark.editBookmark': return 'Edit bookmark';
			case 'bookmarks.addBookmark.bookmarkUrl': return 'Bookmark URL';
			case 'bookmarks.addBookmark.bookmarkDetails': return 'Bookmark details';
			case 'bookmarks.addBookmark.validateUrl': return 'Validate URL';
			case 'bookmarks.addBookmark.urlValid': return 'The URL is valid';
			case 'bookmarks.addBookmark.urlNotValid': return 'The URL is not valid';
			case 'bookmarks.addBookmark.cannotCheckUrl': return 'The URL couldn\'t be checked';
			case 'bookmarks.addBookmark.invalidUrl': return 'Invalid URL';
			case 'bookmarks.addBookmark.url': return 'URL';
			case 'bookmarks.addBookmark.checkingUrl': return 'Checking URL...';
			case 'bookmarks.addBookmark.title': return 'Title';
			case 'bookmarks.addBookmark.description': return 'Description';
			case 'bookmarks.addBookmark.markAsUnread': return 'Mark as unread';
			case 'bookmarks.addBookmark.markAsUnreadDescription': return 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.';
			case 'bookmarks.addBookmark.notes': return 'Notes';
			case 'bookmarks.addBookmark.addNotes': return 'Add notes';
			case 'bookmarks.addBookmark.tags': return 'Tags';
			case 'bookmarks.addBookmark.noTagsAdded': return 'No tags added';
			case 'bookmarks.addBookmark.tagNoWhitespaces': return 'Tag cannot contain whitespaces';
			case 'bookmarks.addBookmark.addTag': return 'Add tag';
			case 'bookmarks.addBookmark.others': return 'Others';
			case 'bookmarks.addBookmark.savingBookmark': return 'Saving bookmark...';
			case 'bookmarks.addBookmark.bookmarkSavedSuccessfully': return 'Bookmark saved successfully.';
			case 'bookmarks.addBookmark.errorSavingBookmark': return 'An error occured when saving the new bookmark.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle': return 'Leave empty to use the website\'s title.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription': return 'Leave empty to use the website\'s description.';
			case 'bookmarks.addBookmark.share': return 'Share';
			case 'bookmarks.addBookmark.shareDescription': return 'Share this bookmark with other registered users and anonymous users.';
			case 'bookmarks.addBookmark.urlAlreadyBookmarked': return 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.';
			case 'bookmarks.search.searchBookmarks': return 'Search bookmarks';
			case 'bookmarks.search.clearSearch': return 'Clear search';
			case 'bookmarks.search.inputSearchTerm': return 'Input a search term';
			case 'bookmarks.search.cannotSearchError': return 'Cannot search content due to an error';
			case 'bookmarks.search.inputtedSearchTermNoResults': return 'The inputted search term doesn\'t have any results';
			case 'bookmarks.bookmarkOptions.edit': return 'Edit';
			case 'bookmarks.bookmarkOptions.delete': return 'Delete';
			case 'bookmarks.bookmarkOptions.read': return 'Read';
			case 'bookmarks.bookmarkOptions.unread': return 'Unread';
			case 'bookmarks.bookmarkOptions.markAsUnread': return 'Mark as unread';
			case 'bookmarks.bookmarkOptions.markAsRead': return 'Mark as read';
			case 'bookmarks.bookmarkOptions.shareOptions': return 'Share options';
			case 'bookmarks.bookmarkOptions.shared': return 'Shared';
			case 'bookmarks.bookmarkOptions.archive': return 'Archive';
			case 'bookmarks.bookmarkOptions.unarchive': return 'Unarchive';
			case 'bookmarks.bookmarkOptions.deletingBookmark': return 'Deleting bookmark...';
			case 'bookmarks.bookmarkOptions.bookmarkDeleted': return 'Bookmark deleted successfully';
			case 'bookmarks.bookmarkOptions.bookmarkNotDeleted': return 'The bookmark couldn\'t be deleted due to an error.';
			case 'bookmarks.bookmarkOptions.deleteBookmark': return 'Delete bookmark';
			case 'bookmarks.bookmarkOptions.followingBookmarkDeleted': return 'The following bookmark will be deleted:';
			case 'bookmarks.bookmarkOptions.markingAsRead': return 'Marking as read...';
			case 'bookmarks.bookmarkOptions.markingAsUnead': return 'Marking as unread...';
			case 'bookmarks.bookmarkOptions.markedAsReadSuccessfully': return 'Bookmark marked as read successfully.';
			case 'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully': return 'Bookmark marked as unread successfully.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead': return 'The bookmark couldn\'t be marked as read.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread': return 'The bookmark couldn\'t be marked as unread.';
			case 'bookmarks.bookmarkOptions.archivingBookmark': return 'Archiving bookmark...';
			case 'bookmarks.bookmarkOptions.unarchivingBookmark': return 'Unarchiving bookmark...';
			case 'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully': return 'Bookmark archived successfully.';
			case 'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully': return 'Bookmark unarchived successfully.';
			case 'bookmarks.bookmarkOptions.bookmarkNotArchived': return 'The bookmark couldn\'t be archived.';
			case 'bookmarks.bookmarkOptions.bookmarkNotUnrchived': return 'The bookmark couldn\'t be unarchived.';
			case 'bookmarks.bookmarkOptions.shareThirdPartyApp': return 'Share using a third party app';
			case 'bookmarks.bookmarkOptions.shareInternally': return 'Share internally';
			case 'bookmarks.bookmarkOptions.unshareInternally': return 'Unshare internally';
			case 'bookmarks.shareOptions.shareOptions': return 'Share options';
			case 'bookmarks.shareOptions.shareInternally': return 'Share internally';
			case 'bookmarks.shareOptions.unshareInternally': return 'Unshare internally';
			case 'bookmarks.shareOptions.shareInternallyDescription': return 'Share internally with the rest of the users of this Linkding instance';
			case 'bookmarks.shareOptions.unshareInternallyDescription': return 'Unshare this internally shared bookmark';
			case 'bookmarks.shareOptions.shareExternally': return 'Share bookmark URL externally';
			case 'bookmarks.shareOptions.shareExternallyDescription': return 'Share the bookmark URL externally using a third party application';
			case 'bookmarks.shareOptions.sharingBookmark': return 'Sharing bookmark...';
			case 'bookmarks.shareOptions.unsharingBookmark': return 'Unsharing bookmark...';
			case 'bookmarks.shareOptions.bookmarkSharedSuccessfully': return 'Bookmark shared successfully.';
			case 'bookmarks.shareOptions.bookmarkNotShared': return 'Bookmark couldn\'t be shared.';
			case 'bookmarks.shareOptions.bookmarkUnsharedSuccessfully': return 'Bookmark unshared successfully.';
			case 'bookmarks.shareOptions.bookmarkNotUnshared': return 'Bookmark couldn\'t be unshared.';
			case 'tags.tags': return 'Tags';
			case 'tags.created': return ({required Object created}) => 'Created: ${created}';
			case 'tags.createTag.createTag': return 'Create tag';
			case 'tags.createTag.name': return 'Name';
			case 'tags.createTag.creatingTag': return 'Creating tag...';
			case 'tags.createTag.errorCreatingTag': return 'An error occured when creating the tag.';
			case 'tags.filteredBookmarks.noBookmarksWithThisTag': return 'There are no bookmarks with this tag';
			case 'tags.filteredBookmarks.noArchivedBookmarks': return 'There are no archived bookmarks';
			case 'tags.filteredBookmarks.noSharedBookmarks': return 'There are no shared bookmarks';
			case 'settings.settings': return 'Settings';
			case 'settings.appSettings': return 'App settings';
			case 'settings.aboutApp': return 'About the app';
			case 'settings.appVersion': return 'App version';
			case 'settings.createdBy': return 'Created by';
			case 'settings.visitGooglePlay': return 'Visit the application page at Google Play';
			case 'settings.visitGitHubRepo': return 'Visit the application repository at GitHub';
			case 'settings.linkdingRepository': return 'Linkding repository';
			case 'settings.linkdingRepositoryDescription': return 'Link to the Linkding repository on GitHub';
			case 'settings.moreInfoApp': return 'More information about the app';
			case 'settings.moreInfoAppDescription': return 'Link to the app\'s information page';
			case 'settings.moreApps': return 'My other apps';
			case 'settings.moreAppsDescription': return 'More apps, contact, donations and more';
			case 'settings.customization.customization': return 'Customization';
			case 'settings.customization.customizationDescription': return 'Set the app theme and color palette.';
			case 'settings.customization.theme': return 'Theme';
			case 'settings.customization.light': return 'Light';
			case 'settings.customization.dark': return 'Dark';
			case 'settings.customization.systemDefined': return 'System defined';
			case 'settings.customization.color': return 'Color';
			case 'settings.customization.useDynamicTheme': return 'Use dynamic theme';
			case 'settings.generalSettings.generalSettings': return 'General settings';
			case 'settings.generalSettings.generalSettingsDescription': return 'General tweaks for the application.';
			case 'settings.generalSettings.bookmarks': return 'Bookmarks';
			case 'settings.generalSettings.showFavicon': return 'Show favicon';
			case 'settings.generalSettings.showFaviconDescription': return 'Show the website\'s favicon on each bookmark.';
			case 'settings.generalSettings.disconnectFromServer': return 'Disconnect from server';
			case 'settings.generalSettings.disconnectModal.title': return 'Disconnect';
			case 'settings.generalSettings.disconnectModal.description': return 'Are you sure you want to disconnect from the server?\nYou will be redirected to the initial setup.';
			case 'settings.generalSettings.useInAppBrowser': return 'Use in app browser';
			case 'settings.generalSettings.useInAppBrowserDescription': return 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.';
			case 'settings.generalSettings.openLinksWith': return 'Open links with...';
			case 'settings.generalSettings.internalBrowser': return 'App internal browser';
			case 'settings.generalSettings.browserCustomTab': return 'Browser custom tab';
			case 'settings.generalSettings.systemBrowser': return 'System browser';
			case 'settings.generalSettings.tags': return 'Tags';
			case 'settings.generalSettings.defaultTags.defaultTags': return 'Default tags';
			case 'settings.generalSettings.defaultTags.defaultTagsDescription': return 'Define a list of tags that will be added by default when creating a bookmark';
			case 'settings.generalSettings.defaultTags.newTag': return 'New tag';
			case 'settings.generalSettings.defaultTags.addTag': return 'Add tag';
			case 'settings.generalSettings.defaultTags.removeThisTag': return 'Remove this tag';
			case 'settings.generalSettings.defaultTags.noDefaultTags': return 'There are no default tags';
			case 'settings.generalSettings.others': return 'Others';
			case 'settings.generalSettings.setMarkAsUnreadDefault': return 'Set mark as unread by default';
			case 'settings.generalSettings.setMarkAsUnreadDefaultDescription': return 'Set the mark as unread option by default when creating a new bookmark.';
			case 'webview.goBack': return 'Go back';
			case 'webview.goForward': return 'Go forward';
			case 'webview.reload': return 'Reload';
			case 'webview.openInSystemBrowser': return 'Open in system browser';
			case 'webview.copyLinkClipboard': return 'Copy link to clipboard';
			case 'webview.linkCopiedClipboard': return 'Link copied to the clipboard.';
			case 'webview.share': return 'Share';
			case 'webview.invalidBookmarkData': return 'The bookmark has invalid data or it\'s corrupted.';
			case 'colors.red': return 'Red';
			case 'colors.green': return 'Green';
			case 'colors.blue': return 'Blue';
			case 'colors.yellow': return 'Yellow';
			case 'colors.orange': return 'Orange';
			case 'colors.brown': return 'Brown';
			case 'colors.cyan': return 'Cyan';
			case 'colors.purple': return 'Purple';
			case 'colors.pink': return 'Pink';
			case 'colors.deepOrange': return 'Deep orange';
			case 'colors.indigo': return 'Indigo';
			default: return null;
		}
	}
}

