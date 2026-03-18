///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
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

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Optional'
	String get optional => 'Optional';

	/// en: 'Your authorization token is not valid anymore. Please, reauthenticate.'
	String get authTokenNotValid => 'Your authorization token is not valid anymore. Please, reauthenticate.';

	/// en: 'Options'
	String get options => 'Options';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome to Linkdy'
	String get title => 'Welcome to Linkdy';

	/// en: 'An application to manage your bookmarks.'
	String get subtitle => 'An application to manage your bookmarks.';

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Previous'
	String get previous => 'Previous';

	/// en: 'Server required'
	String get serverRequired => 'Server required';

	/// en: 'Linkdy it's not an standalone app, it requires the Linkding server to work. In order to use this application, you must deploy Linkding on your home server, VPS or any other computer.'
	String get serverRequiredDescription => 'Linkdy it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.';

	/// en: 'Check the installation instructions on the official GitHub repository.'
	String get installationInstructions => 'Check the installation instructions on the official GitHub repository.';

	/// en: 'I confirm that I have an instance of the Linkding server already running.'
	String get serverRunningConfirmation => 'I confirm that I have an instance of the Linkding server already running.';

	/// en: 'Create a connection'
	String get createConnection => 'Create a connection';

	/// en: 'Enter all the required details to create a connection to your server.'
	String get createConnectionSubtitle => 'Enter all the required details to create a connection to your server.';

	/// en: 'IP address or domain'
	String get ipAddressOrDomain => 'IP address or domain';

	/// en: 'Port'
	String get port => 'Port';

	/// en: 'Path'
	String get path => 'Path';

	/// en: 'Invalid path'
	String get invalidPath => 'Invalid path';

	/// en: 'Token'
	String get token => 'Token';

	/// en: 'Required'
	String get required => 'Required';

	/// en: 'Server details'
	String get serverDetails => 'Server details';

	/// en: 'Authentication'
	String get authentication => 'Authentication';

	/// en: 'Test connection url'
	String get testConnectionUrl => 'Test connection url';

	/// en: 'Connection with server established'
	String get connectionServerEstablished => 'Connection with server established';

	/// en: 'Testing connection...'
	String get testingConnection => 'Testing connection...';

	/// en: 'Connection with server failed'
	String get connectionServerFailed => 'Connection with server failed';

	/// en: 'Connect'
	String get connect => 'Connect';

	/// en: 'Connecting...'
	String get connecting => 'Connecting...';

	/// en: 'Cannot connect to the server.'
	String get cannotConnectToServer => 'Cannot connect to the server.';

	/// en: 'Invalid token.'
	String get invalidToken => 'Invalid token.';

	/// en: 'Invalid IP address or domain'
	String get invalidIpDomain => 'Invalid IP address or domain';

	/// en: 'Invalid port'
	String get invalidPort => 'Invalid port';

	/// en: 'Token is required'
	String get tokenRequired => 'Token is required';
}

// Path: bookmarks
class TranslationsBookmarksEn {
	TranslationsBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bookmarks'
	String get bookmarks => 'Bookmarks';

	/// en: 'No bookmarks added'
	String get noBookmarksAdded => 'No bookmarks added';

	/// en: 'Cannot load the bookmarks'
	String get cannotLoadBookmarks => 'Cannot load the bookmarks';

	late final TranslationsBookmarksDatesEn dates = TranslationsBookmarksDatesEn._(_root);

	/// en: 'Shared'
	String get shared => 'Shared';

	/// en: 'Archived'
	String get archived => 'Archived';

	/// en: 'Show only read'
	String get showOnlyRead => 'Show only read';

	/// en: 'Show only unread'
	String get showOnlyUnread => 'Show only unread';

	/// en: 'Show all bookmarks'
	String get showAllBookmarks => 'Show all bookmarks';

	/// en: 'Read status'
	String get readStatus => 'Read status';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Unread'
	String get unread => 'Unread';

	/// en: 'Read'
	String get read => 'Read';

	/// en: 'Filter and sort'
	String get filterSort => 'Filter and sort';

	/// en: 'Sorting'
	String get sorting => 'Sorting';

	/// en: 'Date'
	String get date => 'Date';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Ascendant'
	String get ascendant => 'Ascendant';

	/// en: 'Descendant'
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

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'Created: $created'
	String created({required Object created}) => 'Created: ${created}';

	late final TranslationsTagsCreateTagEn createTag = TranslationsTagsCreateTagEn._(_root);
	late final TranslationsTagsFilteredBookmarksEn filteredBookmarks = TranslationsTagsFilteredBookmarksEn._(_root);
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'App settings'
	String get appSettings => 'App settings';

	/// en: 'About the app'
	String get aboutApp => 'About the app';

	/// en: 'App version'
	String get appVersion => 'App version';

	/// en: 'Created by'
	String get createdBy => 'Created by';

	/// en: 'Visit the application page at Google Play'
	String get visitGooglePlay => 'Visit the application page at Google Play';

	/// en: 'Visit the application repository at GitHub'
	String get visitGitHubRepo => 'Visit the application repository at GitHub';

	/// en: 'Linkding repository'
	String get linkdingRepository => 'Linkding repository';

	/// en: 'Link to the Linkding repository on GitHub'
	String get linkdingRepositoryDescription => 'Link to the Linkding repository on GitHub';

	/// en: 'More information about the app'
	String get moreInfoApp => 'More information about the app';

	/// en: 'Link to the app's information page'
	String get moreInfoAppDescription => 'Link to the app\'s information page';

	/// en: 'My other apps'
	String get moreApps => 'My other apps';

	/// en: 'More apps, contact, donations and more'
	String get moreAppsDescription => 'More apps, contact, donations and more';

	late final TranslationsSettingsCustomizationEn customization = TranslationsSettingsCustomizationEn._(_root);
	late final TranslationsSettingsGeneralSettingsEn generalSettings = TranslationsSettingsGeneralSettingsEn._(_root);
}

// Path: webview
class TranslationsWebviewEn {
	TranslationsWebviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Go back'
	String get goBack => 'Go back';

	/// en: 'Go forward'
	String get goForward => 'Go forward';

	/// en: 'Reload'
	String get reload => 'Reload';

	/// en: 'Open in system browser'
	String get openInSystemBrowser => 'Open in system browser';

	/// en: 'Copy link to clipboard'
	String get copyLinkClipboard => 'Copy link to clipboard';

	/// en: 'Link copied to the clipboard.'
	String get linkCopiedClipboard => 'Link copied to the clipboard.';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'The bookmark has invalid data or it's corrupted.'
	String get invalidBookmarkData => 'The bookmark has invalid data or it\'s corrupted.';
}

// Path: colors
class TranslationsColorsEn {
	TranslationsColorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Red'
	String get red => 'Red';

	/// en: 'Green'
	String get green => 'Green';

	/// en: 'Blue'
	String get blue => 'Blue';

	/// en: 'Yellow'
	String get yellow => 'Yellow';

	/// en: 'Orange'
	String get orange => 'Orange';

	/// en: 'Brown'
	String get brown => 'Brown';

	/// en: 'Cyan'
	String get cyan => 'Cyan';

	/// en: 'Purple'
	String get purple => 'Purple';

	/// en: 'Pink'
	String get pink => 'Pink';

	/// en: 'Deep orange'
	String get deepOrange => 'Deep orange';

	/// en: 'Indigo'
	String get indigo => 'Indigo';
}

// Path: bookmarks.dates
class TranslationsBookmarksDatesEn {
	TranslationsBookmarksDatesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today, $time'
	String todayAt({required Object time}) => 'Today, ${time}';

	/// en: 'Yesterday, $time'
	String yesterdayAt({required Object time}) => 'Yesterday, ${time}';
}

// Path: bookmarks.addBookmark
class TranslationsBookmarksAddBookmarkEn {
	TranslationsBookmarksAddBookmarkEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add new bookmark'
	String get addBookmark => 'Add new bookmark';

	/// en: 'Edit bookmark'
	String get editBookmark => 'Edit bookmark';

	/// en: 'Bookmark URL'
	String get bookmarkUrl => 'Bookmark URL';

	/// en: 'Bookmark details'
	String get bookmarkDetails => 'Bookmark details';

	/// en: 'Validate URL'
	String get validateUrl => 'Validate URL';

	/// en: 'The URL is valid'
	String get urlValid => 'The URL is valid';

	/// en: 'The URL is not valid'
	String get urlNotValid => 'The URL is not valid';

	/// en: 'The URL couldn't be checked, but you can save it anyway.'
	String get cannotCheckUrl => 'The URL couldn\'t be checked, but you can save it anyway.';

	/// en: 'Invalid URL'
	String get invalidUrl => 'Invalid URL';

	/// en: 'URL'
	String get url => 'URL';

	/// en: 'Checking URL...'
	String get checkingUrl => 'Checking URL...';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Description'
	String get description => 'Description';

	/// en: 'Mark as unread'
	String get markAsUnread => 'Mark as unread';

	/// en: 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.'
	String get markAsUnreadDescription => 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.';

	/// en: 'Notes'
	String get notes => 'Notes';

	/// en: 'Add notes'
	String get addNotes => 'Add notes';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'No tags added'
	String get noTagsAdded => 'No tags added';

	/// en: 'Tag cannot contain whitespaces'
	String get tagNoWhitespaces => 'Tag cannot contain whitespaces';

	/// en: 'Add tag'
	String get addTag => 'Add tag';

	/// en: 'Others'
	String get others => 'Others';

	/// en: 'Saving bookmark...'
	String get savingBookmark => 'Saving bookmark...';

	/// en: 'Bookmark saved successfully.'
	String get bookmarkSavedSuccessfully => 'Bookmark saved successfully.';

	/// en: 'An error occured when saving the new bookmark.'
	String get errorSavingBookmark => 'An error occured when saving the new bookmark.';

	/// en: 'Leave empty to use the website's title.'
	String get leaveEmptyUseWebsiteTitle => 'Leave empty to use the website\'s title.';

	/// en: 'Leave empty to use the website's description.'
	String get leaveEmptyUseWebsiteDescription => 'Leave empty to use the website\'s description.';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Share this bookmark with other registered users and anonymous users.'
	String get shareDescription => 'Share this bookmark with other registered users and anonymous users.';

	/// en: 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.'
	String get urlAlreadyBookmarked => 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.';
}

// Path: bookmarks.search
class TranslationsBookmarksSearchEn {
	TranslationsBookmarksSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search bookmarks'
	String get searchBookmarks => 'Search bookmarks';

	/// en: 'Clear search'
	String get clearSearch => 'Clear search';

	/// en: 'Input a search term'
	String get inputSearchTerm => 'Input a search term';

	/// en: 'Cannot search content due to an error'
	String get cannotSearchError => 'Cannot search content due to an error';

	/// en: 'The inputted search term doesn't have any results'
	String get inputtedSearchTermNoResults => 'The inputted search term doesn\'t have any results';
}

// Path: bookmarks.bookmarkOptions
class TranslationsBookmarksBookmarkOptionsEn {
	TranslationsBookmarksBookmarkOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Read'
	String get read => 'Read';

	/// en: 'Unread'
	String get unread => 'Unread';

	/// en: 'Mark as unread'
	String get markAsUnread => 'Mark as unread';

	/// en: 'Mark as read'
	String get markAsRead => 'Mark as read';

	/// en: 'Share options'
	String get shareOptions => 'Share options';

	/// en: 'Shared'
	String get shared => 'Shared';

	/// en: 'Archive'
	String get archive => 'Archive';

	/// en: 'Unarchive'
	String get unarchive => 'Unarchive';

	/// en: 'Deleting bookmark...'
	String get deletingBookmark => 'Deleting bookmark...';

	/// en: 'Bookmark deleted successfully'
	String get bookmarkDeleted => 'Bookmark deleted successfully';

	/// en: 'The bookmark couldn't be deleted due to an error.'
	String get bookmarkNotDeleted => 'The bookmark couldn\'t be deleted due to an error.';

	/// en: 'Delete bookmark'
	String get deleteBookmark => 'Delete bookmark';

	/// en: 'The following bookmark will be deleted:'
	String get followingBookmarkDeleted => 'The following bookmark will be deleted:';

	/// en: 'Marking as read...'
	String get markingAsRead => 'Marking as read...';

	/// en: 'Marking as unread...'
	String get markingAsUnead => 'Marking as unread...';

	/// en: 'Bookmark marked as read successfully.'
	String get markedAsReadSuccessfully => 'Bookmark marked as read successfully.';

	/// en: 'Bookmark marked as unread successfully.'
	String get markedAsUnreadSuccessfully => 'Bookmark marked as unread successfully.';

	/// en: 'The bookmark couldn't be marked as read.'
	String get bookmarkNotMarkedAsRead => 'The bookmark couldn\'t be marked as read.';

	/// en: 'The bookmark couldn't be marked as unread.'
	String get bookmarkNotMarkedAsUnread => 'The bookmark couldn\'t be marked as unread.';

	/// en: 'Archiving bookmark...'
	String get archivingBookmark => 'Archiving bookmark...';

	/// en: 'Unarchiving bookmark...'
	String get unarchivingBookmark => 'Unarchiving bookmark...';

	/// en: 'Bookmark archived successfully.'
	String get bookmarkArchivedSuccessfully => 'Bookmark archived successfully.';

	/// en: 'Bookmark unarchived successfully.'
	String get bookmarkUnrchivedSuccessfully => 'Bookmark unarchived successfully.';

	/// en: 'The bookmark couldn't be archived.'
	String get bookmarkNotArchived => 'The bookmark couldn\'t be archived.';

	/// en: 'The bookmark couldn't be unarchived.'
	String get bookmarkNotUnrchived => 'The bookmark couldn\'t be unarchived.';

	/// en: 'Share using a third party app'
	String get shareThirdPartyApp => 'Share using a third party app';

	/// en: 'Share internally'
	String get shareInternally => 'Share internally';

	/// en: 'Unshare internally'
	String get unshareInternally => 'Unshare internally';
}

// Path: bookmarks.shareOptions
class TranslationsBookmarksShareOptionsEn {
	TranslationsBookmarksShareOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share options'
	String get shareOptions => 'Share options';

	/// en: 'Share internally'
	String get shareInternally => 'Share internally';

	/// en: 'Unshare internally'
	String get unshareInternally => 'Unshare internally';

	/// en: 'Share internally with the rest of the users of this Linkding instance'
	String get shareInternallyDescription => 'Share internally with the rest of the users of this Linkding instance';

	/// en: 'Unshare this internally shared bookmark'
	String get unshareInternallyDescription => 'Unshare this internally shared bookmark';

	/// en: 'Share bookmark URL externally'
	String get shareExternally => 'Share bookmark URL externally';

	/// en: 'Share the bookmark URL externally using a third party application'
	String get shareExternallyDescription => 'Share the bookmark URL externally using a third party application';

	/// en: 'Sharing bookmark...'
	String get sharingBookmark => 'Sharing bookmark...';

	/// en: 'Unsharing bookmark...'
	String get unsharingBookmark => 'Unsharing bookmark...';

	/// en: 'Bookmark shared successfully.'
	String get bookmarkSharedSuccessfully => 'Bookmark shared successfully.';

	/// en: 'Bookmark couldn't be shared.'
	String get bookmarkNotShared => 'Bookmark couldn\'t be shared.';

	/// en: 'Bookmark unshared successfully.'
	String get bookmarkUnsharedSuccessfully => 'Bookmark unshared successfully.';

	/// en: 'Bookmark couldn't be unshared.'
	String get bookmarkNotUnshared => 'Bookmark couldn\'t be unshared.';
}

// Path: tags.createTag
class TranslationsTagsCreateTagEn {
	TranslationsTagsCreateTagEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create tag'
	String get createTag => 'Create tag';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Creating tag...'
	String get creatingTag => 'Creating tag...';

	/// en: 'An error occured when creating the tag.'
	String get errorCreatingTag => 'An error occured when creating the tag.';
}

// Path: tags.filteredBookmarks
class TranslationsTagsFilteredBookmarksEn {
	TranslationsTagsFilteredBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'There are no bookmarks with this tag'
	String get noBookmarksWithThisTag => 'There are no bookmarks with this tag';

	/// en: 'There are no archived bookmarks'
	String get noArchivedBookmarks => 'There are no archived bookmarks';

	/// en: 'There are no shared bookmarks'
	String get noSharedBookmarks => 'There are no shared bookmarks';
}

// Path: settings.customization
class TranslationsSettingsCustomizationEn {
	TranslationsSettingsCustomizationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Customization'
	String get customization => 'Customization';

	/// en: 'Set the app theme and color palette.'
	String get customizationDescription => 'Set the app theme and color palette.';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'System defined'
	String get systemDefined => 'System defined';

	/// en: 'Color'
	String get color => 'Color';

	/// en: 'Use dynamic theme'
	String get useDynamicTheme => 'Use dynamic theme';
}

// Path: settings.generalSettings
class TranslationsSettingsGeneralSettingsEn {
	TranslationsSettingsGeneralSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'General settings'
	String get generalSettings => 'General settings';

	/// en: 'General tweaks for the application.'
	String get generalSettingsDescription => 'General tweaks for the application.';

	/// en: 'Bookmarks'
	String get bookmarks => 'Bookmarks';

	/// en: 'Show favicon'
	String get showFavicon => 'Show favicon';

	/// en: 'Show the website's favicon on each bookmark.'
	String get showFaviconDescription => 'Show the website\'s favicon on each bookmark.';

	/// en: 'Disconnect from server'
	String get disconnectFromServer => 'Disconnect from server';

	late final TranslationsSettingsGeneralSettingsDisconnectModalEn disconnectModal = TranslationsSettingsGeneralSettingsDisconnectModalEn._(_root);

	/// en: 'Use in app browser'
	String get useInAppBrowser => 'Use in app browser';

	/// en: 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.'
	String get useInAppBrowserDescription => 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.';

	/// en: 'Open links with...'
	String get openLinksWith => 'Open links with...';

	/// en: 'App internal browser'
	String get internalBrowser => 'App internal browser';

	/// en: 'Browser custom tab'
	String get browserCustomTab => 'Browser custom tab';

	/// en: 'System browser'
	String get systemBrowser => 'System browser';

	/// en: 'Tags'
	String get tags => 'Tags';

	late final TranslationsSettingsGeneralSettingsDefaultTagsEn defaultTags = TranslationsSettingsGeneralSettingsDefaultTagsEn._(_root);

	/// en: 'Others'
	String get others => 'Others';

	/// en: 'Set mark as unread by default'
	String get setMarkAsUnreadDefault => 'Set mark as unread by default';

	/// en: 'Set the mark as unread option by default when creating a new bookmark.'
	String get setMarkAsUnreadDefaultDescription => 'Set the mark as unread option by default when creating a new bookmark.';
}

// Path: settings.generalSettings.disconnectModal
class TranslationsSettingsGeneralSettingsDisconnectModalEn {
	TranslationsSettingsGeneralSettingsDisconnectModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Disconnect'
	String get title => 'Disconnect';

	/// en: 'Are you sure you want to disconnect from the server? You will be redirected to the initial setup.'
	String get description => 'Are you sure you want to disconnect from the server?\nYou will be redirected to the initial setup.';
}

// Path: settings.generalSettings.defaultTags
class TranslationsSettingsGeneralSettingsDefaultTagsEn {
	TranslationsSettingsGeneralSettingsDefaultTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Default tags'
	String get defaultTags => 'Default tags';

	/// en: 'Define a list of tags that will be added by default when creating a bookmark'
	String get defaultTagsDescription => 'Define a list of tags that will be added by default when creating a bookmark';

	/// en: 'New tag'
	String get newTag => 'New tag';

	/// en: 'Add tag'
	String get addTag => 'Add tag';

	/// en: 'Remove this tag'
	String get removeThisTag => 'Remove this tag';

	/// en: 'There are no default tags'
	String get noDefaultTags => 'There are no default tags';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'generic.confirm' => 'Confirm',
			'generic.cancel' => 'Cancel',
			'generic.next' => 'Next',
			'generic.save' => 'Save',
			'generic.close' => 'Close',
			'generic.error' => 'Error',
			'generic.optional' => 'Optional',
			'generic.authTokenNotValid' => 'Your authorization token is not valid anymore. Please, reauthenticate.',
			'generic.options' => 'Options',
			'onboarding.title' => 'Welcome to Linkdy',
			'onboarding.subtitle' => 'An application to manage your bookmarks.',
			'onboarding.start' => 'Start',
			'onboarding.next' => 'Next',
			'onboarding.previous' => 'Previous',
			'onboarding.serverRequired' => 'Server required',
			'onboarding.serverRequiredDescription' => 'Linkdy it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.',
			'onboarding.installationInstructions' => 'Check the installation instructions on the official GitHub repository.',
			'onboarding.serverRunningConfirmation' => 'I confirm that I have an instance of the Linkding server already running.',
			'onboarding.createConnection' => 'Create a connection',
			'onboarding.createConnectionSubtitle' => 'Enter all the required details to create a connection to your server.',
			'onboarding.ipAddressOrDomain' => 'IP address or domain',
			'onboarding.port' => 'Port',
			'onboarding.path' => 'Path',
			'onboarding.invalidPath' => 'Invalid path',
			'onboarding.token' => 'Token',
			'onboarding.required' => 'Required',
			'onboarding.serverDetails' => 'Server details',
			'onboarding.authentication' => 'Authentication',
			'onboarding.testConnectionUrl' => 'Test connection url',
			'onboarding.connectionServerEstablished' => 'Connection with server established',
			'onboarding.testingConnection' => 'Testing connection...',
			'onboarding.connectionServerFailed' => 'Connection with server failed',
			'onboarding.connect' => 'Connect',
			'onboarding.connecting' => 'Connecting...',
			'onboarding.cannotConnectToServer' => 'Cannot connect to the server.',
			'onboarding.invalidToken' => 'Invalid token.',
			'onboarding.invalidIpDomain' => 'Invalid IP address or domain',
			'onboarding.invalidPort' => 'Invalid port',
			'onboarding.tokenRequired' => 'Token is required',
			'bookmarks.bookmarks' => 'Bookmarks',
			'bookmarks.noBookmarksAdded' => 'No bookmarks added',
			'bookmarks.cannotLoadBookmarks' => 'Cannot load the bookmarks',
			'bookmarks.dates.todayAt' => ({required Object time}) => 'Today, ${time}',
			'bookmarks.dates.yesterdayAt' => ({required Object time}) => 'Yesterday, ${time}',
			'bookmarks.shared' => 'Shared',
			'bookmarks.archived' => 'Archived',
			'bookmarks.showOnlyRead' => 'Show only read',
			'bookmarks.showOnlyUnread' => 'Show only unread',
			'bookmarks.showAllBookmarks' => 'Show all bookmarks',
			'bookmarks.readStatus' => 'Read status',
			'bookmarks.all' => 'All',
			'bookmarks.unread' => 'Unread',
			'bookmarks.read' => 'Read',
			'bookmarks.filterSort' => 'Filter and sort',
			'bookmarks.sorting' => 'Sorting',
			'bookmarks.date' => 'Date',
			'bookmarks.title' => 'Title',
			'bookmarks.ascendant' => 'Ascendant',
			'bookmarks.descendant' => 'Descendant',
			'bookmarks.addBookmark.addBookmark' => 'Add new bookmark',
			'bookmarks.addBookmark.editBookmark' => 'Edit bookmark',
			'bookmarks.addBookmark.bookmarkUrl' => 'Bookmark URL',
			'bookmarks.addBookmark.bookmarkDetails' => 'Bookmark details',
			'bookmarks.addBookmark.validateUrl' => 'Validate URL',
			'bookmarks.addBookmark.urlValid' => 'The URL is valid',
			'bookmarks.addBookmark.urlNotValid' => 'The URL is not valid',
			'bookmarks.addBookmark.cannotCheckUrl' => 'The URL couldn\'t be checked, but you can save it anyway.',
			'bookmarks.addBookmark.invalidUrl' => 'Invalid URL',
			'bookmarks.addBookmark.url' => 'URL',
			'bookmarks.addBookmark.checkingUrl' => 'Checking URL...',
			'bookmarks.addBookmark.title' => 'Title',
			'bookmarks.addBookmark.description' => 'Description',
			'bookmarks.addBookmark.markAsUnread' => 'Mark as unread',
			'bookmarks.addBookmark.markAsUnreadDescription' => 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.',
			'bookmarks.addBookmark.notes' => 'Notes',
			'bookmarks.addBookmark.addNotes' => 'Add notes',
			'bookmarks.addBookmark.tags' => 'Tags',
			'bookmarks.addBookmark.noTagsAdded' => 'No tags added',
			'bookmarks.addBookmark.tagNoWhitespaces' => 'Tag cannot contain whitespaces',
			'bookmarks.addBookmark.addTag' => 'Add tag',
			'bookmarks.addBookmark.others' => 'Others',
			'bookmarks.addBookmark.savingBookmark' => 'Saving bookmark...',
			'bookmarks.addBookmark.bookmarkSavedSuccessfully' => 'Bookmark saved successfully.',
			'bookmarks.addBookmark.errorSavingBookmark' => 'An error occured when saving the new bookmark.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle' => 'Leave empty to use the website\'s title.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription' => 'Leave empty to use the website\'s description.',
			'bookmarks.addBookmark.share' => 'Share',
			'bookmarks.addBookmark.shareDescription' => 'Share this bookmark with other registered users and anonymous users.',
			'bookmarks.addBookmark.urlAlreadyBookmarked' => 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.',
			'bookmarks.search.searchBookmarks' => 'Search bookmarks',
			'bookmarks.search.clearSearch' => 'Clear search',
			'bookmarks.search.inputSearchTerm' => 'Input a search term',
			'bookmarks.search.cannotSearchError' => 'Cannot search content due to an error',
			'bookmarks.search.inputtedSearchTermNoResults' => 'The inputted search term doesn\'t have any results',
			'bookmarks.bookmarkOptions.edit' => 'Edit',
			'bookmarks.bookmarkOptions.delete' => 'Delete',
			'bookmarks.bookmarkOptions.read' => 'Read',
			'bookmarks.bookmarkOptions.unread' => 'Unread',
			'bookmarks.bookmarkOptions.markAsUnread' => 'Mark as unread',
			'bookmarks.bookmarkOptions.markAsRead' => 'Mark as read',
			'bookmarks.bookmarkOptions.shareOptions' => 'Share options',
			'bookmarks.bookmarkOptions.shared' => 'Shared',
			'bookmarks.bookmarkOptions.archive' => 'Archive',
			'bookmarks.bookmarkOptions.unarchive' => 'Unarchive',
			'bookmarks.bookmarkOptions.deletingBookmark' => 'Deleting bookmark...',
			'bookmarks.bookmarkOptions.bookmarkDeleted' => 'Bookmark deleted successfully',
			'bookmarks.bookmarkOptions.bookmarkNotDeleted' => 'The bookmark couldn\'t be deleted due to an error.',
			'bookmarks.bookmarkOptions.deleteBookmark' => 'Delete bookmark',
			'bookmarks.bookmarkOptions.followingBookmarkDeleted' => 'The following bookmark will be deleted:',
			'bookmarks.bookmarkOptions.markingAsRead' => 'Marking as read...',
			'bookmarks.bookmarkOptions.markingAsUnead' => 'Marking as unread...',
			'bookmarks.bookmarkOptions.markedAsReadSuccessfully' => 'Bookmark marked as read successfully.',
			'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully' => 'Bookmark marked as unread successfully.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead' => 'The bookmark couldn\'t be marked as read.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread' => 'The bookmark couldn\'t be marked as unread.',
			'bookmarks.bookmarkOptions.archivingBookmark' => 'Archiving bookmark...',
			'bookmarks.bookmarkOptions.unarchivingBookmark' => 'Unarchiving bookmark...',
			'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully' => 'Bookmark archived successfully.',
			'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully' => 'Bookmark unarchived successfully.',
			'bookmarks.bookmarkOptions.bookmarkNotArchived' => 'The bookmark couldn\'t be archived.',
			'bookmarks.bookmarkOptions.bookmarkNotUnrchived' => 'The bookmark couldn\'t be unarchived.',
			'bookmarks.bookmarkOptions.shareThirdPartyApp' => 'Share using a third party app',
			'bookmarks.bookmarkOptions.shareInternally' => 'Share internally',
			'bookmarks.bookmarkOptions.unshareInternally' => 'Unshare internally',
			'bookmarks.shareOptions.shareOptions' => 'Share options',
			'bookmarks.shareOptions.shareInternally' => 'Share internally',
			'bookmarks.shareOptions.unshareInternally' => 'Unshare internally',
			'bookmarks.shareOptions.shareInternallyDescription' => 'Share internally with the rest of the users of this Linkding instance',
			'bookmarks.shareOptions.unshareInternallyDescription' => 'Unshare this internally shared bookmark',
			'bookmarks.shareOptions.shareExternally' => 'Share bookmark URL externally',
			'bookmarks.shareOptions.shareExternallyDescription' => 'Share the bookmark URL externally using a third party application',
			'bookmarks.shareOptions.sharingBookmark' => 'Sharing bookmark...',
			'bookmarks.shareOptions.unsharingBookmark' => 'Unsharing bookmark...',
			'bookmarks.shareOptions.bookmarkSharedSuccessfully' => 'Bookmark shared successfully.',
			'bookmarks.shareOptions.bookmarkNotShared' => 'Bookmark couldn\'t be shared.',
			'bookmarks.shareOptions.bookmarkUnsharedSuccessfully' => 'Bookmark unshared successfully.',
			'bookmarks.shareOptions.bookmarkNotUnshared' => 'Bookmark couldn\'t be unshared.',
			'tags.tags' => 'Tags',
			'tags.created' => ({required Object created}) => 'Created: ${created}',
			'tags.createTag.createTag' => 'Create tag',
			'tags.createTag.name' => 'Name',
			'tags.createTag.creatingTag' => 'Creating tag...',
			'tags.createTag.errorCreatingTag' => 'An error occured when creating the tag.',
			'tags.filteredBookmarks.noBookmarksWithThisTag' => 'There are no bookmarks with this tag',
			'tags.filteredBookmarks.noArchivedBookmarks' => 'There are no archived bookmarks',
			'tags.filteredBookmarks.noSharedBookmarks' => 'There are no shared bookmarks',
			'settings.settings' => 'Settings',
			'settings.appSettings' => 'App settings',
			'settings.aboutApp' => 'About the app',
			'settings.appVersion' => 'App version',
			'settings.createdBy' => 'Created by',
			'settings.visitGooglePlay' => 'Visit the application page at Google Play',
			'settings.visitGitHubRepo' => 'Visit the application repository at GitHub',
			'settings.linkdingRepository' => 'Linkding repository',
			'settings.linkdingRepositoryDescription' => 'Link to the Linkding repository on GitHub',
			'settings.moreInfoApp' => 'More information about the app',
			'settings.moreInfoAppDescription' => 'Link to the app\'s information page',
			'settings.moreApps' => 'My other apps',
			'settings.moreAppsDescription' => 'More apps, contact, donations and more',
			'settings.customization.customization' => 'Customization',
			'settings.customization.customizationDescription' => 'Set the app theme and color palette.',
			'settings.customization.theme' => 'Theme',
			'settings.customization.light' => 'Light',
			'settings.customization.dark' => 'Dark',
			'settings.customization.systemDefined' => 'System defined',
			'settings.customization.color' => 'Color',
			'settings.customization.useDynamicTheme' => 'Use dynamic theme',
			'settings.generalSettings.generalSettings' => 'General settings',
			'settings.generalSettings.generalSettingsDescription' => 'General tweaks for the application.',
			'settings.generalSettings.bookmarks' => 'Bookmarks',
			'settings.generalSettings.showFavicon' => 'Show favicon',
			'settings.generalSettings.showFaviconDescription' => 'Show the website\'s favicon on each bookmark.',
			'settings.generalSettings.disconnectFromServer' => 'Disconnect from server',
			'settings.generalSettings.disconnectModal.title' => 'Disconnect',
			'settings.generalSettings.disconnectModal.description' => 'Are you sure you want to disconnect from the server?\nYou will be redirected to the initial setup.',
			'settings.generalSettings.useInAppBrowser' => 'Use in app browser',
			'settings.generalSettings.useInAppBrowserDescription' => 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.',
			'settings.generalSettings.openLinksWith' => 'Open links with...',
			'settings.generalSettings.internalBrowser' => 'App internal browser',
			'settings.generalSettings.browserCustomTab' => 'Browser custom tab',
			'settings.generalSettings.systemBrowser' => 'System browser',
			'settings.generalSettings.tags' => 'Tags',
			'settings.generalSettings.defaultTags.defaultTags' => 'Default tags',
			'settings.generalSettings.defaultTags.defaultTagsDescription' => 'Define a list of tags that will be added by default when creating a bookmark',
			'settings.generalSettings.defaultTags.newTag' => 'New tag',
			'settings.generalSettings.defaultTags.addTag' => 'Add tag',
			'settings.generalSettings.defaultTags.removeThisTag' => 'Remove this tag',
			'settings.generalSettings.defaultTags.noDefaultTags' => 'There are no default tags',
			'settings.generalSettings.others' => 'Others',
			'settings.generalSettings.setMarkAsUnreadDefault' => 'Set mark as unread by default',
			'settings.generalSettings.setMarkAsUnreadDefaultDescription' => 'Set the mark as unread option by default when creating a new bookmark.',
			'webview.goBack' => 'Go back',
			'webview.goForward' => 'Go forward',
			'webview.reload' => 'Reload',
			'webview.openInSystemBrowser' => 'Open in system browser',
			'webview.copyLinkClipboard' => 'Copy link to clipboard',
			'webview.linkCopiedClipboard' => 'Link copied to the clipboard.',
			'webview.share' => 'Share',
			'webview.invalidBookmarkData' => 'The bookmark has invalid data or it\'s corrupted.',
			'colors.red' => 'Red',
			'colors.green' => 'Green',
			'colors.blue' => 'Blue',
			'colors.yellow' => 'Yellow',
			'colors.orange' => 'Orange',
			'colors.brown' => 'Brown',
			'colors.cyan' => 'Cyan',
			'colors.purple' => 'Purple',
			'colors.pink' => 'Pink',
			'colors.deepOrange' => 'Deep orange',
			'colors.indigo' => 'Indigo',
			_ => null,
		};
	}
}
