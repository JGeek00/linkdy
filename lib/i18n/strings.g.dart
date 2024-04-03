/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 3
/// Strings: 561 (187 per locale)
///
/// Built on 2024-04-03 at 23:27 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	es(languageCode: 'es', build: _StringsEs.build),
	tr(languageCode: 'tr', build: _StringsTr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	// Translations
	late final _StringsGenericEn generic = _StringsGenericEn._(_root);
	late final _StringsOnboardingEn onboarding = _StringsOnboardingEn._(_root);
	late final _StringsBookmarksEn bookmarks = _StringsBookmarksEn._(_root);
	late final _StringsTagsEn tags = _StringsTagsEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	late final _StringsWebviewEn webview = _StringsWebviewEn._(_root);
	late final _StringsColorsEn colors = _StringsColorsEn._(_root);
}

// Path: generic
class _StringsGenericEn {
	_StringsGenericEn._(this._root);

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
class _StringsOnboardingEn {
	_StringsOnboardingEn._(this._root);

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
class _StringsBookmarksEn {
	_StringsBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get bookmarks => 'Bookmarks';
	String get noBookmarksAdded => 'No bookmarks added';
	String get cannotLoadBookmarks => 'Cannot load the bookmarks';
	late final _StringsBookmarksDatesEn dates = _StringsBookmarksDatesEn._(_root);
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
	late final _StringsBookmarksAddBookmarkEn addBookmark = _StringsBookmarksAddBookmarkEn._(_root);
	late final _StringsBookmarksSearchEn search = _StringsBookmarksSearchEn._(_root);
	late final _StringsBookmarksBookmarkOptionsEn bookmarkOptions = _StringsBookmarksBookmarkOptionsEn._(_root);
	late final _StringsBookmarksShareOptionsEn shareOptions = _StringsBookmarksShareOptionsEn._(_root);
}

// Path: tags
class _StringsTagsEn {
	_StringsTagsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tags => 'Tags';
	String created({required Object created}) => 'Created: ${created}';
	late final _StringsTagsCreateTagEn createTag = _StringsTagsCreateTagEn._(_root);
	late final _StringsTagsFilteredBookmarksEn filteredBookmarks = _StringsTagsFilteredBookmarksEn._(_root);
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

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
	late final _StringsSettingsCustomizationEn customization = _StringsSettingsCustomizationEn._(_root);
	late final _StringsSettingsGeneralSettingsEn generalSettings = _StringsSettingsGeneralSettingsEn._(_root);
}

// Path: webview
class _StringsWebviewEn {
	_StringsWebviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get goBack => 'Go back';
	String get goForward => 'Go forward';
	String get reload => 'Reload';
	String get openInSystemBrowser => 'Open in system browser';
	String get copyLinkClipboard => 'Copy link to clipboard';
	String get linkCopiedClipboard => 'Link copied to the clipboard.';
	String get share => 'Share';
}

// Path: colors
class _StringsColorsEn {
	_StringsColorsEn._(this._root);

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
class _StringsBookmarksDatesEn {
	_StringsBookmarksDatesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String todayAt({required Object time}) => 'Today, ${time}';
	String yesterdayAt({required Object time}) => 'Yesterday, ${time}';
}

// Path: bookmarks.addBookmark
class _StringsBookmarksAddBookmarkEn {
	_StringsBookmarksAddBookmarkEn._(this._root);

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
}

// Path: bookmarks.search
class _StringsBookmarksSearchEn {
	_StringsBookmarksSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get searchBookmarks => 'Search bookmarks';
	String get clearSearch => 'Clear search';
	String get inputSearchTerm => 'Input a search term';
	String get cannotSearchError => 'Cannot search content due to an error';
	String get inputtedSearchTermNoResults => 'The inputted search term doesn\'t have any results';
}

// Path: bookmarks.bookmarkOptions
class _StringsBookmarksBookmarkOptionsEn {
	_StringsBookmarksBookmarkOptionsEn._(this._root);

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
class _StringsBookmarksShareOptionsEn {
	_StringsBookmarksShareOptionsEn._(this._root);

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
class _StringsTagsCreateTagEn {
	_StringsTagsCreateTagEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createTag => 'Create tag';
	String get name => 'Name';
	String get creatingTag => 'Creating tag...';
	String get errorCreatingTag => 'An error occured when creating the tag.';
}

// Path: tags.filteredBookmarks
class _StringsTagsFilteredBookmarksEn {
	_StringsTagsFilteredBookmarksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noBookmarksWithThisTag => 'There are no bookmarks with this tag';
	String get noArchivedBookmarks => 'There are no archived bookmarks';
	String get noSharedBookmarks => 'There are no shared bookmarks';
}

// Path: settings.customization
class _StringsSettingsCustomizationEn {
	_StringsSettingsCustomizationEn._(this._root);

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
class _StringsSettingsGeneralSettingsEn {
	_StringsSettingsGeneralSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get generalSettings => 'General settings';
	String get generalSettingsDescription => 'General tweaks for the application.';
	String get bookmarks => 'Bookmarks';
	String get showFavicon => 'Show favicon';
	String get showFaviconDescription => 'Show the website\'s favicon on each bookmark.';
	String get disconnectFromServer => 'Disconnect from server';
	late final _StringsSettingsGeneralSettingsDisconnectModalEn disconnectModal = _StringsSettingsGeneralSettingsDisconnectModalEn._(_root);
	String get useInAppBrowser => 'Use in app browser';
	String get useInAppBrowserDescription => 'Opens the bookmarks with the integrated browser instead of with the system browser. On tablet mode the internal browser will always be used.';
}

// Path: settings.generalSettings.disconnectModal
class _StringsSettingsGeneralSettingsDisconnectModalEn {
	_StringsSettingsGeneralSettingsDisconnectModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Disconnect';
	String get description => 'Are you sure you want to disconnect from the server?\nYou will be redirected to the initial setup.';
}

// Path: <root>
class _StringsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsGenericEs generic = _StringsGenericEs._(_root);
	@override late final _StringsOnboardingEs onboarding = _StringsOnboardingEs._(_root);
	@override late final _StringsBookmarksEs bookmarks = _StringsBookmarksEs._(_root);
	@override late final _StringsTagsEs tags = _StringsTagsEs._(_root);
	@override late final _StringsSettingsEs settings = _StringsSettingsEs._(_root);
	@override late final _StringsWebviewEs webview = _StringsWebviewEs._(_root);
	@override late final _StringsColorsEs colors = _StringsColorsEs._(_root);
}

// Path: generic
class _StringsGenericEs implements _StringsGenericEn {
	_StringsGenericEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Confirmar';
	@override String get cancel => 'Cancelar';
	@override String get next => 'Siguiente';
	@override String get save => 'Guardar';
	@override String get close => 'Cerrar';
	@override String get error => 'Error';
	@override String get optional => 'Opcional';
	@override String get authTokenNotValid => 'Su token de autorización ya no es válido. Por favor, vuelva a autenticarse.';
	@override String get options => 'Opciones';
}

// Path: onboarding
class _StringsOnboardingEs implements _StringsOnboardingEn {
	_StringsOnboardingEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenido a Linkdy';
	@override String get subtitle => 'Una aplicación para gestionar tus enlaces favoritos.';
	@override String get start => 'Comenzar';
	@override String get next => 'Siguiente';
	@override String get previous => 'Anterior';
	@override String get serverRequired => 'Servidor requerido';
	@override String get serverRequiredDescription => 'Linkdy no es una aplicación independiente, requiere el servidor Linkding para funcionar.\nPara utilizar esta aplicación, debe instalar Linkding en su servidor doméstico, VPS o cualquier otro ordenador.';
	@override String get installationInstructions => 'Mira las instrucciones de instalación en el repositorio oficial en GitHub.';
	@override String get serverRunningConfirmation => 'Confirmo que tengo una instancia del servidor Linkding ya en funcionamiento.';
	@override String get createConnection => 'Crear una conexión';
	@override String get createConnectionSubtitle => 'Introduce todos los detalles requeridos para crear una conexión con el servidor';
	@override String get ipAddressOrDomain => 'Dirección IP o dominio';
	@override String get port => 'Puerto';
	@override String get path => 'Ruta';
	@override String get invalidPath => 'Ruta no válida';
	@override String get token => 'Token';
	@override String get required => 'Requerido';
	@override String get serverDetails => 'Detalles del servidor';
	@override String get authentication => 'Autenticación';
	@override String get testConnectionUrl => 'Probar URL de conexión';
	@override String get testingConnection => 'Probando conexión...';
	@override String get connectionServerEstablished => 'Conexión con servidor establecida';
	@override String get connectionServerFailed => 'Conexión con servidor fallida';
	@override String get connect => 'Conectar';
	@override String get connecting => 'Conectando...';
	@override String get cannotConnectToServer => 'No se puede conectar con el servidor.';
	@override String get invalidToken => 'Token no válido.';
	@override String get invalidIpDomain => 'Dirección IP o dominio no válido';
	@override String get invalidPort => 'Puerto no válido';
	@override String get tokenRequired => 'Token requerido';
}

// Path: bookmarks
class _StringsBookmarksEs implements _StringsBookmarksEn {
	_StringsBookmarksEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get bookmarks => 'Marcadores';
	@override String get noBookmarksAdded => 'No hay marcadores añadidos';
	@override String get cannotLoadBookmarks => 'No se pueden cargar los marcadores';
	@override late final _StringsBookmarksDatesEs dates = _StringsBookmarksDatesEs._(_root);
	@override String get shared => 'Compartidos';
	@override String get archived => 'Archivados';
	@override String get showOnlyRead => 'Mostrar solo leídos';
	@override String get showOnlyUnread => 'Mostrar solo no leídos';
	@override String get showAllBookmarks => 'Mostrar todos los marcadores';
	@override String get readStatus => 'Estado de lectura';
	@override String get all => 'Todos';
	@override String get unread => 'No leídos';
	@override String get read => 'Leídos';
	@override String get filterSort => 'Filtrar y ordenar';
	@override String get sorting => 'Ordenación';
	@override String get date => 'Fecha';
	@override String get title => 'Título';
	@override String get ascendant => 'Ascendiente';
	@override String get descendant => 'Descendiente';
	@override late final _StringsBookmarksAddBookmarkEs addBookmark = _StringsBookmarksAddBookmarkEs._(_root);
	@override late final _StringsBookmarksSearchEs search = _StringsBookmarksSearchEs._(_root);
	@override late final _StringsBookmarksBookmarkOptionsEs bookmarkOptions = _StringsBookmarksBookmarkOptionsEs._(_root);
	@override late final _StringsBookmarksShareOptionsEs shareOptions = _StringsBookmarksShareOptionsEs._(_root);
}

// Path: tags
class _StringsTagsEs implements _StringsTagsEn {
	_StringsTagsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get tags => 'Etiquetas';
	@override String created({required Object created}) => 'Creado: ${created}';
	@override late final _StringsTagsCreateTagEs createTag = _StringsTagsCreateTagEs._(_root);
	@override late final _StringsTagsFilteredBookmarksEs filteredBookmarks = _StringsTagsFilteredBookmarksEs._(_root);
}

// Path: settings
class _StringsSettingsEs implements _StringsSettingsEn {
	_StringsSettingsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get settings => 'Ajustes';
	@override String get appSettings => 'Ajustes de la aplicación';
	@override String get aboutApp => 'Sobre la aplicación';
	@override String get appVersion => 'Versión de la aplicación';
	@override String get createdBy => 'Creado por';
	@override String get visitGooglePlay => 'Visita la página de la aplicación en Google Play';
	@override String get visitGitHubRepo => 'Visita el repositorio de la aplicación en GitHub';
	@override String get linkdingRepository => 'Repositorio de Linkding';
	@override String get linkdingRepositoryDescription => 'Enlace al repositorio de Linkding en GitHub';
	@override late final _StringsSettingsCustomizationEs customization = _StringsSettingsCustomizationEs._(_root);
	@override late final _StringsSettingsGeneralSettingsEs generalSettings = _StringsSettingsGeneralSettingsEs._(_root);
}

// Path: webview
class _StringsWebviewEs implements _StringsWebviewEn {
	_StringsWebviewEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get goBack => 'Ir atrás';
	@override String get goForward => 'Ir adelante';
	@override String get reload => 'Recargar';
	@override String get openInSystemBrowser => 'Abrir en el navegador del sistema';
	@override String get copyLinkClipboard => 'Copiar enlace al portapapeles';
	@override String get linkCopiedClipboard => 'Enlace copiado al portapapeles.';
	@override String get share => 'Compartir';
}

// Path: colors
class _StringsColorsEs implements _StringsColorsEn {
	_StringsColorsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get red => 'Rojo';
	@override String get green => 'Verde';
	@override String get blue => 'Azul';
	@override String get yellow => 'Amarillo';
	@override String get orange => 'Naranja';
	@override String get brown => 'Marron';
	@override String get cyan => 'Cian';
	@override String get purple => 'Morado';
	@override String get pink => 'Rosa';
	@override String get deepOrange => 'Naranja oscuro';
	@override String get indigo => 'Índigo';
}

// Path: bookmarks.dates
class _StringsBookmarksDatesEs implements _StringsBookmarksDatesEn {
	_StringsBookmarksDatesEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String todayAt({required Object time}) => 'Hoy, ${time}';
	@override String yesterdayAt({required Object time}) => 'Ayer, ${time}';
}

// Path: bookmarks.addBookmark
class _StringsBookmarksAddBookmarkEs implements _StringsBookmarksAddBookmarkEn {
	_StringsBookmarksAddBookmarkEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get addBookmark => 'Añadir nuevo marcador';
	@override String get editBookmark => 'Editar marcador';
	@override String get url => 'URL';
	@override String get bookmarkUrl => 'URL del marcador';
	@override String get bookmarkDetails => 'Detalles del marcador';
	@override String get validateUrl => 'Validar URL';
	@override String get urlValid => 'La URL es válida';
	@override String get urlNotValid => 'La URL no es válida';
	@override String get cannotCheckUrl => 'No se pudo comprobar la URL';
	@override String get invalidUrl => 'URL no válida';
	@override String get checkingUrl => 'Comprobando URL...';
	@override String get title => 'Title';
	@override String get description => 'Description';
	@override String get markAsUnread => 'Marcar como no leído';
	@override String get notes => 'Notas';
	@override String get addNotes => 'Añadir notas';
	@override String get tags => 'Etiquetas';
	@override String get noTagsAdded => 'No hay etiquetas añadidas';
	@override String get tagNoWhitespaces => 'La etiqueta no puede contener espacios';
	@override String get addTag => 'Añadir etiqueta';
	@override String get others => 'Otros';
	@override String get savingBookmark => 'Guardando marcador...';
	@override String get bookmarkSavedSuccessfully => 'Marcador guardado correctamente';
	@override String get errorSavingBookmark => 'Ocurrió un error al guardar el nuevo marcador.';
	@override String get leaveEmptyUseWebsiteTitle => 'Dejar vacío para usar el título del sitio web.';
	@override String get leaveEmptyUseWebsiteDescription => 'Dejar vacío para usar la descripción del sitio web.';
}

// Path: bookmarks.search
class _StringsBookmarksSearchEs implements _StringsBookmarksSearchEn {
	_StringsBookmarksSearchEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get searchBookmarks => 'Buscar marcadores';
	@override String get clearSearch => 'Limpiar búsqueda';
	@override String get inputSearchTerm => 'Introduce un término de búsqueda';
	@override String get cannotSearchError => 'No se puede buscar el contenido por un error';
	@override String get inputtedSearchTermNoResults => 'El término de búsqueda introducido no tiene resultados';
}

// Path: bookmarks.bookmarkOptions
class _StringsBookmarksBookmarkOptionsEs implements _StringsBookmarksBookmarkOptionsEn {
	_StringsBookmarksBookmarkOptionsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get edit => 'Editar';
	@override String get delete => 'Eliminar';
	@override String get read => 'Leído';
	@override String get unread => 'No leído';
	@override String get markAsUnread => 'Marcar como no leído';
	@override String get markAsRead => 'Marcar como leído';
	@override String get shareOptions => 'Opciones de compartir';
	@override String get shared => 'Compartido';
	@override String get archive => 'Archivar';
	@override String get unarchive => 'Desarchivar';
	@override String get deletingBookmark => 'Eliminando marcador...';
	@override String get bookmarkDeleted => 'Marcador eliminado correctamente';
	@override String get bookmarkNotDeleted => 'El marcador no se ha podido eliminar debido a un error.';
	@override String get deleteBookmark => 'Eliminar marcador';
	@override String get followingBookmarkDeleted => 'El siguiente marcador será eliminado:';
	@override String get markingAsRead => 'Marcando como leído...';
	@override String get markingAsUnead => 'Marcando como no leído...';
	@override String get markedAsReadSuccessfully => 'Marcador marcado como leído correctamente.';
	@override String get markedAsUnreadSuccessfully => 'Marcador marcado como no leído correctamente.';
	@override String get bookmarkNotMarkedAsRead => 'El marcador no se ha podido marcar como leído.';
	@override String get bookmarkNotMarkedAsUnread => 'El marcador no se ha podido marcar como no leído.';
	@override String get archivingBookmark => 'Archivando marcador...';
	@override String get unarchivingBookmark => 'Desarchivando marcador...';
	@override String get bookmarkArchivedSuccessfully => 'Marcador archivado correctamente.';
	@override String get bookmarkUnrchivedSuccessfully => 'Marcador desarchivado correctamente.';
	@override String get bookmarkNotArchived => 'El marcador no pudo ser archivado.';
	@override String get bookmarkNotUnrchived => 'El marcador no pudo ser desarchivado.';
	@override String get shareThirdPartyApp => 'Compartir usando una app de terceros';
	@override String get shareInternally => 'Compartir internamente';
	@override String get unshareInternally => 'Descompartir internamente';
}

// Path: bookmarks.shareOptions
class _StringsBookmarksShareOptionsEs implements _StringsBookmarksShareOptionsEn {
	_StringsBookmarksShareOptionsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get shareOptions => 'Opciones de compartir';
	@override String get shareInternally => 'Compartir internamente';
	@override String get unshareInternally => 'Descompartir internamente';
	@override String get shareInternallyDescription => 'Compartir internamente con el resto de usuarios de la instancia de Linkding';
	@override String get unshareInternallyDescription => 'Descompartir el marcador compartido internamente';
	@override String get shareExternally => 'Compartir URL del marcador externamente';
	@override String get shareExternallyDescription => 'Compartir la URL del marcador externamente usando una aplicación de terceros';
	@override String get sharingBookmark => 'Compartiendo marcador...';
	@override String get unsharingBookmark => 'Descompartiendo marcador...';
	@override String get bookmarkSharedSuccessfully => 'Marcador compartido correctamente.';
	@override String get bookmarkNotShared => 'El marcador no pudo ser compartido.';
	@override String get bookmarkUnsharedSuccessfully => 'Marcador descompartido correctamente.';
	@override String get bookmarkNotUnshared => 'El marcador no pudo ser descompartido.';
}

// Path: tags.createTag
class _StringsTagsCreateTagEs implements _StringsTagsCreateTagEn {
	_StringsTagsCreateTagEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get createTag => 'Crear etiqueta';
	@override String get name => 'Nombre';
	@override String get creatingTag => 'Creando etiqueta...';
	@override String get errorCreatingTag => 'Ocurrió un error al crear la etiqueta.';
}

// Path: tags.filteredBookmarks
class _StringsTagsFilteredBookmarksEs implements _StringsTagsFilteredBookmarksEn {
	_StringsTagsFilteredBookmarksEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get noBookmarksWithThisTag => 'No hay marcadores con esta etiqueta';
	@override String get noArchivedBookmarks => 'No hay marcadores archivados';
	@override String get noSharedBookmarks => 'No hay marcadores compartidos';
}

// Path: settings.customization
class _StringsSettingsCustomizationEs implements _StringsSettingsCustomizationEn {
	_StringsSettingsCustomizationEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get customization => 'Personalización';
	@override String get customizationDescription => 'Configura el tema y la paleta de colores.';
	@override String get theme => 'Tema';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get systemDefined => 'Definido por el sistema';
	@override String get color => 'Color';
	@override String get useDynamicTheme => 'Usar tema dinámico';
}

// Path: settings.generalSettings
class _StringsSettingsGeneralSettingsEs implements _StringsSettingsGeneralSettingsEn {
	_StringsSettingsGeneralSettingsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get generalSettings => 'Ajustes generales';
	@override String get generalSettingsDescription => 'Ajustes generales para la aplicación.';
	@override String get bookmarks => 'Marcadores';
	@override String get showFavicon => 'Mostrar favicon';
	@override String get showFaviconDescription => 'Mostrar el favicon del sitio web en cada marcador.';
	@override String get disconnectFromServer => 'Desconectar del servidor';
	@override late final _StringsSettingsGeneralSettingsDisconnectModalEs disconnectModal = _StringsSettingsGeneralSettingsDisconnectModalEs._(_root);
	@override String get useInAppBrowser => 'Usar navegador de la aplicación';
	@override String get useInAppBrowserDescription => 'Abre los marcadores con el navegador integrado en vez de con el navegador del sietema. En modo tablet siempre se usará el navegador integrado.';
}

// Path: settings.generalSettings.disconnectModal
class _StringsSettingsGeneralSettingsDisconnectModalEs implements _StringsSettingsGeneralSettingsDisconnectModalEn {
	_StringsSettingsGeneralSettingsDisconnectModalEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desconectar';
	@override String get description => '¿Estás seguro que deseas desconectarte del servidor?\nSerás redirigido a la configuración inicial.';
}

// Path: <root>
class _StringsTr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsTr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsGenericTr generic = _StringsGenericTr._(_root);
	@override late final _StringsOnboardingTr onboarding = _StringsOnboardingTr._(_root);
	@override late final _StringsBookmarksTr bookmarks = _StringsBookmarksTr._(_root);
	@override late final _StringsTagsTr tags = _StringsTagsTr._(_root);
	@override late final _StringsSettingsTr settings = _StringsSettingsTr._(_root);
	@override late final _StringsWebviewTr webview = _StringsWebviewTr._(_root);
	@override late final _StringsColorsTr colors = _StringsColorsTr._(_root);
}

// Path: generic
class _StringsGenericTr implements _StringsGenericEn {
	_StringsGenericTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Onayla';
	@override String get cancel => 'İptal';
	@override String get next => 'Sonraki';
	@override String get save => 'Kaydet';
	@override String get close => 'Kapat';
	@override String get error => 'Hata';
	@override String get optional => 'İsteğe bağlı';
	@override String get authTokenNotValid => 'Yetkilendirme jetonunuz artık geçerli değil. Lütfen yeniden kimlik doğrulaması yapın.';
	@override String get options => 'Seçenekler';
}

// Path: onboarding
class _StringsOnboardingTr implements _StringsOnboardingEn {
	_StringsOnboardingTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Linkdy\'ye hoş geldiniz';
	@override String get subtitle => 'Yer işaretlerinizi yönetmek için bir uygulama.';
	@override String get start => 'Başlat';
	@override String get next => 'Sonraki';
	@override String get previous => 'Önceki';
	@override String get serverRequired => 'Sunucu gerekli';
	@override String get serverRequiredDescription => 'Linkdy bağımsız bir uygulama değildir, Linkding sunucusunun çalışmasını gerektirir.\nBu uygulamayı kullanmak için Linkding\'i ev sunucunuza, VPS\'ye veya başka bir bilgisayara dağıtmanız gerekir.';
	@override String get installationInstructions => 'Resmi GitHub deposundaki kurulum talimatlarını kontrol edin.';
	@override String get serverRunningConfirmation => 'Halihazırda çalışan bir Linkding sunucusu örneğim olduğunu onaylıyorum.';
	@override String get createConnection => 'Bağlantı oluştur';
	@override String get createConnectionSubtitle => 'Sunucunuzla bağlantı kurmak için gerekli tüm ayrıntıları girin.';
	@override String get ipAddressOrDomain => 'IP adresi veya alan adı';
	@override String get port => 'Bağlantı noktası';
	@override String get path => 'Yol';
	@override String get invalidPath => 'Geçersiz yol';
	@override String get token => 'Jeton';
	@override String get required => 'Gerekli';
	@override String get serverDetails => 'Sunucu bilgileri';
	@override String get authentication => 'Kimlik Doğrulama';
	@override String get testConnectionUrl => 'Bağlantı adresini test edin';
	@override String get connectionServerEstablished => 'Sunucu ile bağlantı kuruldu';
	@override String get testingConnection => 'Bağlantı test ediliyor...';
	@override String get connectionServerFailed => 'Sunucu ile bağlantı başarısız oldu';
	@override String get connect => 'Bağlan';
	@override String get connecting => 'Bağlanıyor...';
	@override String get cannotConnectToServer => 'Sunucuya bağlanılamıyor.';
	@override String get invalidToken => 'Geçersiz belirteç.';
	@override String get invalidIpDomain => 'Geçersiz IP adresi veya etki alanı';
	@override String get invalidPort => 'Geçersiz bağlantı noktası';
	@override String get tokenRequired => 'Jeton gereklidir';
}

// Path: bookmarks
class _StringsBookmarksTr implements _StringsBookmarksEn {
	_StringsBookmarksTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get bookmarks => 'Yer İşaretleri';
	@override String get noBookmarksAdded => 'Yer işareti eklenmedi';
	@override String get cannotLoadBookmarks => 'Yer işaretleri yüklenemiyor';
	@override late final _StringsBookmarksDatesTr dates = _StringsBookmarksDatesTr._(_root);
	@override String get shared => 'Ortak';
	@override String get archived => 'Arşivlendi';
	@override String get showOnlyRead => 'Sadece okunanı göster';
	@override String get showOnlyUnread => 'Sadece okunmamışları göster';
	@override String get showAllBookmarks => 'Tüm yer işaretlerini göster';
	@override String get readStatus => 'Okuma durumu';
	@override String get all => 'Tümü';
	@override String get unread => 'Okunmadı';
	@override String get read => 'Oku';
	@override String get filterSort => 'Filtrele ve sırala';
	@override String get sorting => 'Sıralama';
	@override String get date => 'Tarih';
	@override String get title => 'Başlık';
	@override String get ascendant => 'Yükselen';
	@override String get descendant => 'Alt öğe';
	@override late final _StringsBookmarksAddBookmarkTr addBookmark = _StringsBookmarksAddBookmarkTr._(_root);
	@override late final _StringsBookmarksSearchTr search = _StringsBookmarksSearchTr._(_root);
	@override late final _StringsBookmarksBookmarkOptionsTr bookmarkOptions = _StringsBookmarksBookmarkOptionsTr._(_root);
	@override late final _StringsBookmarksShareOptionsTr shareOptions = _StringsBookmarksShareOptionsTr._(_root);
}

// Path: tags
class _StringsTagsTr implements _StringsTagsEn {
	_StringsTagsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get tags => 'Etiketler';
	@override String created({required Object created}) => 'Oluşturuldu: ${created}';
	@override late final _StringsTagsCreateTagTr createTag = _StringsTagsCreateTagTr._(_root);
	@override late final _StringsTagsFilteredBookmarksTr filteredBookmarks = _StringsTagsFilteredBookmarksTr._(_root);
}

// Path: settings
class _StringsSettingsTr implements _StringsSettingsEn {
	_StringsSettingsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get settings => 'Ayarlar';
	@override String get appSettings => 'Uygulama ayarları';
	@override String get aboutApp => 'Uygulama hakkında';
	@override String get appVersion => 'Uygulama sürümü';
	@override String get createdBy => 'Geliştirici';
	@override String get visitGooglePlay => 'Google Play\'deki uygulama sayfasını ziyaret et';
	@override String get visitGitHubRepo => 'GitHub\'daki uygulama deposunu ziyaret et';
	@override String get linkdingRepository => 'Linkding deposu';
	@override String get linkdingRepositoryDescription => 'GitHub\'daki Linkding deposuna bağlantı';
	@override late final _StringsSettingsCustomizationTr customization = _StringsSettingsCustomizationTr._(_root);
	@override late final _StringsSettingsGeneralSettingsTr generalSettings = _StringsSettingsGeneralSettingsTr._(_root);
}

// Path: webview
class _StringsWebviewTr implements _StringsWebviewEn {
	_StringsWebviewTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get goBack => 'Geri dön';
	@override String get goForward => 'İleri git';
	@override String get reload => 'Yenile';
	@override String get openInSystemBrowser => 'Sistem tarayıcısında aç';
	@override String get copyLinkClipboard => 'Bağlantıyı panoya kopyala';
	@override String get linkCopiedClipboard => 'Bağlantı panoya kopyalandı.';
	@override String get share => 'Paylaş';
}

// Path: colors
class _StringsColorsTr implements _StringsColorsEn {
	_StringsColorsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get red => 'Kırmızı';
	@override String get green => 'Yeşil';
	@override String get blue => 'Mavi';
	@override String get yellow => 'Sarı';
	@override String get orange => 'Turuncu';
	@override String get brown => 'Kahverengi';
	@override String get cyan => 'Camgöbeği';
	@override String get purple => 'Mor';
	@override String get pink => 'Pembe';
	@override String get deepOrange => 'Koyu turuncu';
	@override String get indigo => 'Çivit';
}

// Path: bookmarks.dates
class _StringsBookmarksDatesTr implements _StringsBookmarksDatesEn {
	_StringsBookmarksDatesTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String todayAt({required Object time}) => 'Bugün, ${time}';
	@override String yesterdayAt({required Object time}) => 'Dün, ${time}';
}

// Path: bookmarks.addBookmark
class _StringsBookmarksAddBookmarkTr implements _StringsBookmarksAddBookmarkEn {
	_StringsBookmarksAddBookmarkTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get addBookmark => 'Yeni yer işareti ekle';
	@override String get editBookmark => 'Yer işaretini düzenle';
	@override String get bookmarkUrl => 'Yer İşareti bağlantısı';
	@override String get bookmarkDetails => 'Yer işareti ayrıntıları';
	@override String get validateUrl => 'Bağlantı adresini doğrula';
	@override String get urlValid => 'Bağlantı adresi geçerli';
	@override String get urlNotValid => 'Bağlantı adresi geçerli değil';
	@override String get cannotCheckUrl => 'Bağlantı adresi kontrol edilemedi';
	@override String get invalidUrl => 'Geçersiz bağlantı adresi';
	@override String get url => 'Bağlantı adresi';
	@override String get checkingUrl => 'Bağlantı adresi kontrol ediliyor...';
	@override String get title => 'Başlık';
	@override String get description => 'Açıklama';
	@override String get markAsUnread => 'Okunmadı olarak işaretle';
	@override String get notes => 'Notlar';
	@override String get addNotes => 'Not ekle';
	@override String get tags => 'Etiketler';
	@override String get noTagsAdded => 'Etiket eklenmedi';
	@override String get tagNoWhitespaces => 'Etiket boşluk içeremez';
	@override String get addTag => 'Etiket ekle';
	@override String get others => 'Diğerleri';
	@override String get savingBookmark => 'Yer işareti kaydediliyor...';
	@override String get bookmarkSavedSuccessfully => 'Yer işareti başarıyla kaydedildi.';
	@override String get errorSavingBookmark => 'Yeni yer işareti kaydedilirken bir hata oluştu.';
	@override String get leaveEmptyUseWebsiteTitle => 'Web sitesinin başlığını kullanmak için boş bırakın.';
	@override String get leaveEmptyUseWebsiteDescription => 'Web sitesinin açıklamasını kullanmak için boş bırakın.';
}

// Path: bookmarks.search
class _StringsBookmarksSearchTr implements _StringsBookmarksSearchEn {
	_StringsBookmarksSearchTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get searchBookmarks => 'Yer işaretlerini ara';
	@override String get clearSearch => 'Aramayı temizle';
	@override String get inputSearchTerm => 'Bir arama terimi girin';
	@override String get cannotSearchError => 'Bir hata nedeniyle içerik aranamıyor';
	@override String get inputtedSearchTermNoResults => 'Girilen arama teriminin herhangi bir sonucu yok';
}

// Path: bookmarks.bookmarkOptions
class _StringsBookmarksBookmarkOptionsTr implements _StringsBookmarksBookmarkOptionsEn {
	_StringsBookmarksBookmarkOptionsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get edit => 'Düzenle';
	@override String get delete => 'Sil';
	@override String get read => 'Oku';
	@override String get unread => 'Okunmadı';
	@override String get markAsUnread => 'Okunmadı olarak işaretle';
	@override String get markAsRead => 'Okundu olarak işaretle';
	@override String get shareOptions => 'Paylaşım seçenekleri';
	@override String get shared => 'Ortak';
	@override String get archive => 'Arşivle';
	@override String get unarchive => 'Arşivden çıkar';
	@override String get deletingBookmark => 'Yer işareti siliniyor...';
	@override String get bookmarkDeleted => 'Yer işareti başarıyla silindi';
	@override String get bookmarkNotDeleted => 'Yer işareti bir hata nedeniyle silinemedi.';
	@override String get deleteBookmark => 'Yer işaretini sil';
	@override String get followingBookmarkDeleted => 'Aşağıdaki yer işareti silinecek:';
	@override String get markingAsRead => 'Okundu olarak işaretleniyor...';
	@override String get markingAsUnead => 'Okunmadı olarak işaretleniyor...';
	@override String get markedAsReadSuccessfully => 'Yer işareti başarıyla okundu olarak işaretlendi.';
	@override String get markedAsUnreadSuccessfully => 'Yer işareti başarıyla okunmadı olarak işaretlendi.';
	@override String get bookmarkNotMarkedAsRead => 'Yer işareti okundu olarak işaretlenemedi.';
	@override String get bookmarkNotMarkedAsUnread => 'Yer işareti okunmadı olarak işaretlenemedi.';
	@override String get archivingBookmark => 'Yer işareti arşivleniyor...';
	@override String get unarchivingBookmark => 'Yer işareti arşivden çıkarılıyor...';
	@override String get bookmarkArchivedSuccessfully => 'Yer işareti başarıyla arşivlendi.';
	@override String get bookmarkUnrchivedSuccessfully => 'Yer işareti başarıyla arşivden kaldırıldı.';
	@override String get bookmarkNotArchived => 'Yer işareti arşivlenemedi.';
	@override String get bookmarkNotUnrchived => 'Yer işareti arşivden çıkarılamadı.';
	@override String get shareThirdPartyApp => 'Üçüncü taraf bir uygulama kullanarak paylaşma';
	@override String get shareInternally => 'Dahili olarak paylaşın';
	@override String get unshareInternally => 'Dahili olarak paylaşımı kaldır';
}

// Path: bookmarks.shareOptions
class _StringsBookmarksShareOptionsTr implements _StringsBookmarksShareOptionsEn {
	_StringsBookmarksShareOptionsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get shareOptions => 'Paylaşım seçenekleri';
	@override String get shareInternally => 'Dahili olarak paylaşın';
	@override String get unshareInternally => 'Dahili olarak paylaşımı kaldır';
	@override String get shareInternallyDescription => 'Bu Linkding örneğinin geri kalan kullanıcılarıyla dahili olarak paylaşın';
	@override String get unshareInternallyDescription => 'Dahili olarak paylaşılan bu yer işaretinin paylaşımını kaldır';
	@override String get shareExternally => 'Yer işareti bağlantısını harici olarak paylaş';
	@override String get shareExternallyDescription => 'Üçüncü taraf bir uygulama kullanarak yer işareti bağlantısını harici olarak paylaşın';
	@override String get sharingBookmark => 'Yer işareti paylaşılıyor...';
	@override String get unsharingBookmark => 'Yer işareti paylaşımı kaldırılıyor...';
	@override String get bookmarkSharedSuccessfully => 'Yer işareti başarıyla paylaşıldı.';
	@override String get bookmarkNotShared => 'Yer işareti paylaşılamadı.';
	@override String get bookmarkUnsharedSuccessfully => 'Yer işareti başarıyla paylaşılmadı.';
	@override String get bookmarkNotUnshared => 'Yer işareti paylaşımı kaldırılamadı.';
}

// Path: tags.createTag
class _StringsTagsCreateTagTr implements _StringsTagsCreateTagEn {
	_StringsTagsCreateTagTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get createTag => 'Etiket oluştur';
	@override String get name => 'Adı';
	@override String get creatingTag => 'Etiket oluşturuluyor...';
	@override String get errorCreatingTag => 'Etiket oluşturulurken bir hata oluştu.';
}

// Path: tags.filteredBookmarks
class _StringsTagsFilteredBookmarksTr implements _StringsTagsFilteredBookmarksEn {
	_StringsTagsFilteredBookmarksTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get noBookmarksWithThisTag => 'Bu etikete sahip yer işareti yok';
	@override String get noArchivedBookmarks => 'Arşivlenmiş yer işareti yok';
	@override String get noSharedBookmarks => 'Paylaşılmış yer işareti yok';
}

// Path: settings.customization
class _StringsSettingsCustomizationTr implements _StringsSettingsCustomizationEn {
	_StringsSettingsCustomizationTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get customization => 'Özelleştirme';
	@override String get customizationDescription => 'Uygulama temasını ve renk paletini ayarlayın.';
	@override String get theme => 'Tema';
	@override String get light => 'Açık';
	@override String get dark => 'Koyu';
	@override String get systemDefined => 'Sistem tanımlı';
	@override String get color => 'Renk';
	@override String get useDynamicTheme => 'Dinamik tema kullan';
}

// Path: settings.generalSettings
class _StringsSettingsGeneralSettingsTr implements _StringsSettingsGeneralSettingsEn {
	_StringsSettingsGeneralSettingsTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get generalSettings => 'Genel Ayarlar';
	@override String get generalSettingsDescription => 'Uygulama için genel düzenlemeler.';
	@override String get bookmarks => 'Yer İmleri';
	@override String get showFavicon => 'Site simgesini göster';
	@override String get showFaviconDescription => 'Her yer işaretinde web sitesinin simgesini gösterin.';
	@override String get disconnectFromServer => 'Sunucu ile bağlantıyı kes';
	@override late final _StringsSettingsGeneralSettingsDisconnectModalTr disconnectModal = _StringsSettingsGeneralSettingsDisconnectModalTr._(_root);
	@override String get useInAppBrowser => 'Uygulama tarayıcısında kullanın';
	@override String get useInAppBrowserDescription => 'Yer işaretlerini sistem tarayıcısı yerine entegre tarayıcı ile açar. Tablet modunda dahili tarayıcı her zaman kullanılacaktır.';
}

// Path: settings.generalSettings.disconnectModal
class _StringsSettingsGeneralSettingsDisconnectModalTr implements _StringsSettingsGeneralSettingsDisconnectModalEn {
	_StringsSettingsGeneralSettingsDisconnectModalTr._(this._root);

	@override final _StringsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bağlantıyı kes';
	@override String get description => 'Sunucu bağlantısını kesmek istediğinizden emin misiniz?\nİlk kuruluma yönlendirileceksiniz.';
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
			case 'webview.goBack': return 'Go back';
			case 'webview.goForward': return 'Go forward';
			case 'webview.reload': return 'Reload';
			case 'webview.openInSystemBrowser': return 'Open in system browser';
			case 'webview.copyLinkClipboard': return 'Copy link to clipboard';
			case 'webview.linkCopiedClipboard': return 'Link copied to the clipboard.';
			case 'webview.share': return 'Share';
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

extension on _StringsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'generic.confirm': return 'Confirmar';
			case 'generic.cancel': return 'Cancelar';
			case 'generic.next': return 'Siguiente';
			case 'generic.save': return 'Guardar';
			case 'generic.close': return 'Cerrar';
			case 'generic.error': return 'Error';
			case 'generic.optional': return 'Opcional';
			case 'generic.authTokenNotValid': return 'Su token de autorización ya no es válido. Por favor, vuelva a autenticarse.';
			case 'generic.options': return 'Opciones';
			case 'onboarding.title': return 'Bienvenido a Linkdy';
			case 'onboarding.subtitle': return 'Una aplicación para gestionar tus enlaces favoritos.';
			case 'onboarding.start': return 'Comenzar';
			case 'onboarding.next': return 'Siguiente';
			case 'onboarding.previous': return 'Anterior';
			case 'onboarding.serverRequired': return 'Servidor requerido';
			case 'onboarding.serverRequiredDescription': return 'Linkdy no es una aplicación independiente, requiere el servidor Linkding para funcionar.\nPara utilizar esta aplicación, debe instalar Linkding en su servidor doméstico, VPS o cualquier otro ordenador.';
			case 'onboarding.installationInstructions': return 'Mira las instrucciones de instalación en el repositorio oficial en GitHub.';
			case 'onboarding.serverRunningConfirmation': return 'Confirmo que tengo una instancia del servidor Linkding ya en funcionamiento.';
			case 'onboarding.createConnection': return 'Crear una conexión';
			case 'onboarding.createConnectionSubtitle': return 'Introduce todos los detalles requeridos para crear una conexión con el servidor';
			case 'onboarding.ipAddressOrDomain': return 'Dirección IP o dominio';
			case 'onboarding.port': return 'Puerto';
			case 'onboarding.path': return 'Ruta';
			case 'onboarding.invalidPath': return 'Ruta no válida';
			case 'onboarding.token': return 'Token';
			case 'onboarding.required': return 'Requerido';
			case 'onboarding.serverDetails': return 'Detalles del servidor';
			case 'onboarding.authentication': return 'Autenticación';
			case 'onboarding.testConnectionUrl': return 'Probar URL de conexión';
			case 'onboarding.testingConnection': return 'Probando conexión...';
			case 'onboarding.connectionServerEstablished': return 'Conexión con servidor establecida';
			case 'onboarding.connectionServerFailed': return 'Conexión con servidor fallida';
			case 'onboarding.connect': return 'Conectar';
			case 'onboarding.connecting': return 'Conectando...';
			case 'onboarding.cannotConnectToServer': return 'No se puede conectar con el servidor.';
			case 'onboarding.invalidToken': return 'Token no válido.';
			case 'onboarding.invalidIpDomain': return 'Dirección IP o dominio no válido';
			case 'onboarding.invalidPort': return 'Puerto no válido';
			case 'onboarding.tokenRequired': return 'Token requerido';
			case 'bookmarks.bookmarks': return 'Marcadores';
			case 'bookmarks.noBookmarksAdded': return 'No hay marcadores añadidos';
			case 'bookmarks.cannotLoadBookmarks': return 'No se pueden cargar los marcadores';
			case 'bookmarks.dates.todayAt': return ({required Object time}) => 'Hoy, ${time}';
			case 'bookmarks.dates.yesterdayAt': return ({required Object time}) => 'Ayer, ${time}';
			case 'bookmarks.shared': return 'Compartidos';
			case 'bookmarks.archived': return 'Archivados';
			case 'bookmarks.showOnlyRead': return 'Mostrar solo leídos';
			case 'bookmarks.showOnlyUnread': return 'Mostrar solo no leídos';
			case 'bookmarks.showAllBookmarks': return 'Mostrar todos los marcadores';
			case 'bookmarks.readStatus': return 'Estado de lectura';
			case 'bookmarks.all': return 'Todos';
			case 'bookmarks.unread': return 'No leídos';
			case 'bookmarks.read': return 'Leídos';
			case 'bookmarks.filterSort': return 'Filtrar y ordenar';
			case 'bookmarks.sorting': return 'Ordenación';
			case 'bookmarks.date': return 'Fecha';
			case 'bookmarks.title': return 'Título';
			case 'bookmarks.ascendant': return 'Ascendiente';
			case 'bookmarks.descendant': return 'Descendiente';
			case 'bookmarks.addBookmark.addBookmark': return 'Añadir nuevo marcador';
			case 'bookmarks.addBookmark.editBookmark': return 'Editar marcador';
			case 'bookmarks.addBookmark.url': return 'URL';
			case 'bookmarks.addBookmark.bookmarkUrl': return 'URL del marcador';
			case 'bookmarks.addBookmark.bookmarkDetails': return 'Detalles del marcador';
			case 'bookmarks.addBookmark.validateUrl': return 'Validar URL';
			case 'bookmarks.addBookmark.urlValid': return 'La URL es válida';
			case 'bookmarks.addBookmark.urlNotValid': return 'La URL no es válida';
			case 'bookmarks.addBookmark.cannotCheckUrl': return 'No se pudo comprobar la URL';
			case 'bookmarks.addBookmark.invalidUrl': return 'URL no válida';
			case 'bookmarks.addBookmark.checkingUrl': return 'Comprobando URL...';
			case 'bookmarks.addBookmark.title': return 'Title';
			case 'bookmarks.addBookmark.description': return 'Description';
			case 'bookmarks.addBookmark.markAsUnread': return 'Marcar como no leído';
			case 'bookmarks.addBookmark.notes': return 'Notas';
			case 'bookmarks.addBookmark.addNotes': return 'Añadir notas';
			case 'bookmarks.addBookmark.tags': return 'Etiquetas';
			case 'bookmarks.addBookmark.noTagsAdded': return 'No hay etiquetas añadidas';
			case 'bookmarks.addBookmark.tagNoWhitespaces': return 'La etiqueta no puede contener espacios';
			case 'bookmarks.addBookmark.addTag': return 'Añadir etiqueta';
			case 'bookmarks.addBookmark.others': return 'Otros';
			case 'bookmarks.addBookmark.savingBookmark': return 'Guardando marcador...';
			case 'bookmarks.addBookmark.bookmarkSavedSuccessfully': return 'Marcador guardado correctamente';
			case 'bookmarks.addBookmark.errorSavingBookmark': return 'Ocurrió un error al guardar el nuevo marcador.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle': return 'Dejar vacío para usar el título del sitio web.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription': return 'Dejar vacío para usar la descripción del sitio web.';
			case 'bookmarks.search.searchBookmarks': return 'Buscar marcadores';
			case 'bookmarks.search.clearSearch': return 'Limpiar búsqueda';
			case 'bookmarks.search.inputSearchTerm': return 'Introduce un término de búsqueda';
			case 'bookmarks.search.cannotSearchError': return 'No se puede buscar el contenido por un error';
			case 'bookmarks.search.inputtedSearchTermNoResults': return 'El término de búsqueda introducido no tiene resultados';
			case 'bookmarks.bookmarkOptions.edit': return 'Editar';
			case 'bookmarks.bookmarkOptions.delete': return 'Eliminar';
			case 'bookmarks.bookmarkOptions.read': return 'Leído';
			case 'bookmarks.bookmarkOptions.unread': return 'No leído';
			case 'bookmarks.bookmarkOptions.markAsUnread': return 'Marcar como no leído';
			case 'bookmarks.bookmarkOptions.markAsRead': return 'Marcar como leído';
			case 'bookmarks.bookmarkOptions.shareOptions': return 'Opciones de compartir';
			case 'bookmarks.bookmarkOptions.shared': return 'Compartido';
			case 'bookmarks.bookmarkOptions.archive': return 'Archivar';
			case 'bookmarks.bookmarkOptions.unarchive': return 'Desarchivar';
			case 'bookmarks.bookmarkOptions.deletingBookmark': return 'Eliminando marcador...';
			case 'bookmarks.bookmarkOptions.bookmarkDeleted': return 'Marcador eliminado correctamente';
			case 'bookmarks.bookmarkOptions.bookmarkNotDeleted': return 'El marcador no se ha podido eliminar debido a un error.';
			case 'bookmarks.bookmarkOptions.deleteBookmark': return 'Eliminar marcador';
			case 'bookmarks.bookmarkOptions.followingBookmarkDeleted': return 'El siguiente marcador será eliminado:';
			case 'bookmarks.bookmarkOptions.markingAsRead': return 'Marcando como leído...';
			case 'bookmarks.bookmarkOptions.markingAsUnead': return 'Marcando como no leído...';
			case 'bookmarks.bookmarkOptions.markedAsReadSuccessfully': return 'Marcador marcado como leído correctamente.';
			case 'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully': return 'Marcador marcado como no leído correctamente.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead': return 'El marcador no se ha podido marcar como leído.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread': return 'El marcador no se ha podido marcar como no leído.';
			case 'bookmarks.bookmarkOptions.archivingBookmark': return 'Archivando marcador...';
			case 'bookmarks.bookmarkOptions.unarchivingBookmark': return 'Desarchivando marcador...';
			case 'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully': return 'Marcador archivado correctamente.';
			case 'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully': return 'Marcador desarchivado correctamente.';
			case 'bookmarks.bookmarkOptions.bookmarkNotArchived': return 'El marcador no pudo ser archivado.';
			case 'bookmarks.bookmarkOptions.bookmarkNotUnrchived': return 'El marcador no pudo ser desarchivado.';
			case 'bookmarks.bookmarkOptions.shareThirdPartyApp': return 'Compartir usando una app de terceros';
			case 'bookmarks.bookmarkOptions.shareInternally': return 'Compartir internamente';
			case 'bookmarks.bookmarkOptions.unshareInternally': return 'Descompartir internamente';
			case 'bookmarks.shareOptions.shareOptions': return 'Opciones de compartir';
			case 'bookmarks.shareOptions.shareInternally': return 'Compartir internamente';
			case 'bookmarks.shareOptions.unshareInternally': return 'Descompartir internamente';
			case 'bookmarks.shareOptions.shareInternallyDescription': return 'Compartir internamente con el resto de usuarios de la instancia de Linkding';
			case 'bookmarks.shareOptions.unshareInternallyDescription': return 'Descompartir el marcador compartido internamente';
			case 'bookmarks.shareOptions.shareExternally': return 'Compartir URL del marcador externamente';
			case 'bookmarks.shareOptions.shareExternallyDescription': return 'Compartir la URL del marcador externamente usando una aplicación de terceros';
			case 'bookmarks.shareOptions.sharingBookmark': return 'Compartiendo marcador...';
			case 'bookmarks.shareOptions.unsharingBookmark': return 'Descompartiendo marcador...';
			case 'bookmarks.shareOptions.bookmarkSharedSuccessfully': return 'Marcador compartido correctamente.';
			case 'bookmarks.shareOptions.bookmarkNotShared': return 'El marcador no pudo ser compartido.';
			case 'bookmarks.shareOptions.bookmarkUnsharedSuccessfully': return 'Marcador descompartido correctamente.';
			case 'bookmarks.shareOptions.bookmarkNotUnshared': return 'El marcador no pudo ser descompartido.';
			case 'tags.tags': return 'Etiquetas';
			case 'tags.created': return ({required Object created}) => 'Creado: ${created}';
			case 'tags.createTag.createTag': return 'Crear etiqueta';
			case 'tags.createTag.name': return 'Nombre';
			case 'tags.createTag.creatingTag': return 'Creando etiqueta...';
			case 'tags.createTag.errorCreatingTag': return 'Ocurrió un error al crear la etiqueta.';
			case 'tags.filteredBookmarks.noBookmarksWithThisTag': return 'No hay marcadores con esta etiqueta';
			case 'tags.filteredBookmarks.noArchivedBookmarks': return 'No hay marcadores archivados';
			case 'tags.filteredBookmarks.noSharedBookmarks': return 'No hay marcadores compartidos';
			case 'settings.settings': return 'Ajustes';
			case 'settings.appSettings': return 'Ajustes de la aplicación';
			case 'settings.aboutApp': return 'Sobre la aplicación';
			case 'settings.appVersion': return 'Versión de la aplicación';
			case 'settings.createdBy': return 'Creado por';
			case 'settings.visitGooglePlay': return 'Visita la página de la aplicación en Google Play';
			case 'settings.visitGitHubRepo': return 'Visita el repositorio de la aplicación en GitHub';
			case 'settings.linkdingRepository': return 'Repositorio de Linkding';
			case 'settings.linkdingRepositoryDescription': return 'Enlace al repositorio de Linkding en GitHub';
			case 'settings.customization.customization': return 'Personalización';
			case 'settings.customization.customizationDescription': return 'Configura el tema y la paleta de colores.';
			case 'settings.customization.theme': return 'Tema';
			case 'settings.customization.light': return 'Claro';
			case 'settings.customization.dark': return 'Oscuro';
			case 'settings.customization.systemDefined': return 'Definido por el sistema';
			case 'settings.customization.color': return 'Color';
			case 'settings.customization.useDynamicTheme': return 'Usar tema dinámico';
			case 'settings.generalSettings.generalSettings': return 'Ajustes generales';
			case 'settings.generalSettings.generalSettingsDescription': return 'Ajustes generales para la aplicación.';
			case 'settings.generalSettings.bookmarks': return 'Marcadores';
			case 'settings.generalSettings.showFavicon': return 'Mostrar favicon';
			case 'settings.generalSettings.showFaviconDescription': return 'Mostrar el favicon del sitio web en cada marcador.';
			case 'settings.generalSettings.disconnectFromServer': return 'Desconectar del servidor';
			case 'settings.generalSettings.disconnectModal.title': return 'Desconectar';
			case 'settings.generalSettings.disconnectModal.description': return '¿Estás seguro que deseas desconectarte del servidor?\nSerás redirigido a la configuración inicial.';
			case 'settings.generalSettings.useInAppBrowser': return 'Usar navegador de la aplicación';
			case 'settings.generalSettings.useInAppBrowserDescription': return 'Abre los marcadores con el navegador integrado en vez de con el navegador del sietema. En modo tablet siempre se usará el navegador integrado.';
			case 'webview.goBack': return 'Ir atrás';
			case 'webview.goForward': return 'Ir adelante';
			case 'webview.reload': return 'Recargar';
			case 'webview.openInSystemBrowser': return 'Abrir en el navegador del sistema';
			case 'webview.copyLinkClipboard': return 'Copiar enlace al portapapeles';
			case 'webview.linkCopiedClipboard': return 'Enlace copiado al portapapeles.';
			case 'webview.share': return 'Compartir';
			case 'colors.red': return 'Rojo';
			case 'colors.green': return 'Verde';
			case 'colors.blue': return 'Azul';
			case 'colors.yellow': return 'Amarillo';
			case 'colors.orange': return 'Naranja';
			case 'colors.brown': return 'Marron';
			case 'colors.cyan': return 'Cian';
			case 'colors.purple': return 'Morado';
			case 'colors.pink': return 'Rosa';
			case 'colors.deepOrange': return 'Naranja oscuro';
			case 'colors.indigo': return 'Índigo';
			default: return null;
		}
	}
}

extension on _StringsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'generic.confirm': return 'Onayla';
			case 'generic.cancel': return 'İptal';
			case 'generic.next': return 'Sonraki';
			case 'generic.save': return 'Kaydet';
			case 'generic.close': return 'Kapat';
			case 'generic.error': return 'Hata';
			case 'generic.optional': return 'İsteğe bağlı';
			case 'generic.authTokenNotValid': return 'Yetkilendirme jetonunuz artık geçerli değil. Lütfen yeniden kimlik doğrulaması yapın.';
			case 'generic.options': return 'Seçenekler';
			case 'onboarding.title': return 'Linkdy\'ye hoş geldiniz';
			case 'onboarding.subtitle': return 'Yer işaretlerinizi yönetmek için bir uygulama.';
			case 'onboarding.start': return 'Başlat';
			case 'onboarding.next': return 'Sonraki';
			case 'onboarding.previous': return 'Önceki';
			case 'onboarding.serverRequired': return 'Sunucu gerekli';
			case 'onboarding.serverRequiredDescription': return 'Linkdy bağımsız bir uygulama değildir, Linkding sunucusunun çalışmasını gerektirir.\nBu uygulamayı kullanmak için Linkding\'i ev sunucunuza, VPS\'ye veya başka bir bilgisayara dağıtmanız gerekir.';
			case 'onboarding.installationInstructions': return 'Resmi GitHub deposundaki kurulum talimatlarını kontrol edin.';
			case 'onboarding.serverRunningConfirmation': return 'Halihazırda çalışan bir Linkding sunucusu örneğim olduğunu onaylıyorum.';
			case 'onboarding.createConnection': return 'Bağlantı oluştur';
			case 'onboarding.createConnectionSubtitle': return 'Sunucunuzla bağlantı kurmak için gerekli tüm ayrıntıları girin.';
			case 'onboarding.ipAddressOrDomain': return 'IP adresi veya alan adı';
			case 'onboarding.port': return 'Bağlantı noktası';
			case 'onboarding.path': return 'Yol';
			case 'onboarding.invalidPath': return 'Geçersiz yol';
			case 'onboarding.token': return 'Jeton';
			case 'onboarding.required': return 'Gerekli';
			case 'onboarding.serverDetails': return 'Sunucu bilgileri';
			case 'onboarding.authentication': return 'Kimlik Doğrulama';
			case 'onboarding.testConnectionUrl': return 'Bağlantı adresini test edin';
			case 'onboarding.connectionServerEstablished': return 'Sunucu ile bağlantı kuruldu';
			case 'onboarding.testingConnection': return 'Bağlantı test ediliyor...';
			case 'onboarding.connectionServerFailed': return 'Sunucu ile bağlantı başarısız oldu';
			case 'onboarding.connect': return 'Bağlan';
			case 'onboarding.connecting': return 'Bağlanıyor...';
			case 'onboarding.cannotConnectToServer': return 'Sunucuya bağlanılamıyor.';
			case 'onboarding.invalidToken': return 'Geçersiz belirteç.';
			case 'onboarding.invalidIpDomain': return 'Geçersiz IP adresi veya etki alanı';
			case 'onboarding.invalidPort': return 'Geçersiz bağlantı noktası';
			case 'onboarding.tokenRequired': return 'Jeton gereklidir';
			case 'bookmarks.bookmarks': return 'Yer İşaretleri';
			case 'bookmarks.noBookmarksAdded': return 'Yer işareti eklenmedi';
			case 'bookmarks.cannotLoadBookmarks': return 'Yer işaretleri yüklenemiyor';
			case 'bookmarks.dates.todayAt': return ({required Object time}) => 'Bugün, ${time}';
			case 'bookmarks.dates.yesterdayAt': return ({required Object time}) => 'Dün, ${time}';
			case 'bookmarks.shared': return 'Ortak';
			case 'bookmarks.archived': return 'Arşivlendi';
			case 'bookmarks.showOnlyRead': return 'Sadece okunanı göster';
			case 'bookmarks.showOnlyUnread': return 'Sadece okunmamışları göster';
			case 'bookmarks.showAllBookmarks': return 'Tüm yer işaretlerini göster';
			case 'bookmarks.readStatus': return 'Okuma durumu';
			case 'bookmarks.all': return 'Tümü';
			case 'bookmarks.unread': return 'Okunmadı';
			case 'bookmarks.read': return 'Oku';
			case 'bookmarks.filterSort': return 'Filtrele ve sırala';
			case 'bookmarks.sorting': return 'Sıralama';
			case 'bookmarks.date': return 'Tarih';
			case 'bookmarks.title': return 'Başlık';
			case 'bookmarks.ascendant': return 'Yükselen';
			case 'bookmarks.descendant': return 'Alt öğe';
			case 'bookmarks.addBookmark.addBookmark': return 'Yeni yer işareti ekle';
			case 'bookmarks.addBookmark.editBookmark': return 'Yer işaretini düzenle';
			case 'bookmarks.addBookmark.bookmarkUrl': return 'Yer İşareti bağlantısı';
			case 'bookmarks.addBookmark.bookmarkDetails': return 'Yer işareti ayrıntıları';
			case 'bookmarks.addBookmark.validateUrl': return 'Bağlantı adresini doğrula';
			case 'bookmarks.addBookmark.urlValid': return 'Bağlantı adresi geçerli';
			case 'bookmarks.addBookmark.urlNotValid': return 'Bağlantı adresi geçerli değil';
			case 'bookmarks.addBookmark.cannotCheckUrl': return 'Bağlantı adresi kontrol edilemedi';
			case 'bookmarks.addBookmark.invalidUrl': return 'Geçersiz bağlantı adresi';
			case 'bookmarks.addBookmark.url': return 'Bağlantı adresi';
			case 'bookmarks.addBookmark.checkingUrl': return 'Bağlantı adresi kontrol ediliyor...';
			case 'bookmarks.addBookmark.title': return 'Başlık';
			case 'bookmarks.addBookmark.description': return 'Açıklama';
			case 'bookmarks.addBookmark.markAsUnread': return 'Okunmadı olarak işaretle';
			case 'bookmarks.addBookmark.notes': return 'Notlar';
			case 'bookmarks.addBookmark.addNotes': return 'Not ekle';
			case 'bookmarks.addBookmark.tags': return 'Etiketler';
			case 'bookmarks.addBookmark.noTagsAdded': return 'Etiket eklenmedi';
			case 'bookmarks.addBookmark.tagNoWhitespaces': return 'Etiket boşluk içeremez';
			case 'bookmarks.addBookmark.addTag': return 'Etiket ekle';
			case 'bookmarks.addBookmark.others': return 'Diğerleri';
			case 'bookmarks.addBookmark.savingBookmark': return 'Yer işareti kaydediliyor...';
			case 'bookmarks.addBookmark.bookmarkSavedSuccessfully': return 'Yer işareti başarıyla kaydedildi.';
			case 'bookmarks.addBookmark.errorSavingBookmark': return 'Yeni yer işareti kaydedilirken bir hata oluştu.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle': return 'Web sitesinin başlığını kullanmak için boş bırakın.';
			case 'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription': return 'Web sitesinin açıklamasını kullanmak için boş bırakın.';
			case 'bookmarks.search.searchBookmarks': return 'Yer işaretlerini ara';
			case 'bookmarks.search.clearSearch': return 'Aramayı temizle';
			case 'bookmarks.search.inputSearchTerm': return 'Bir arama terimi girin';
			case 'bookmarks.search.cannotSearchError': return 'Bir hata nedeniyle içerik aranamıyor';
			case 'bookmarks.search.inputtedSearchTermNoResults': return 'Girilen arama teriminin herhangi bir sonucu yok';
			case 'bookmarks.bookmarkOptions.edit': return 'Düzenle';
			case 'bookmarks.bookmarkOptions.delete': return 'Sil';
			case 'bookmarks.bookmarkOptions.read': return 'Oku';
			case 'bookmarks.bookmarkOptions.unread': return 'Okunmadı';
			case 'bookmarks.bookmarkOptions.markAsUnread': return 'Okunmadı olarak işaretle';
			case 'bookmarks.bookmarkOptions.markAsRead': return 'Okundu olarak işaretle';
			case 'bookmarks.bookmarkOptions.shareOptions': return 'Paylaşım seçenekleri';
			case 'bookmarks.bookmarkOptions.shared': return 'Ortak';
			case 'bookmarks.bookmarkOptions.archive': return 'Arşivle';
			case 'bookmarks.bookmarkOptions.unarchive': return 'Arşivden çıkar';
			case 'bookmarks.bookmarkOptions.deletingBookmark': return 'Yer işareti siliniyor...';
			case 'bookmarks.bookmarkOptions.bookmarkDeleted': return 'Yer işareti başarıyla silindi';
			case 'bookmarks.bookmarkOptions.bookmarkNotDeleted': return 'Yer işareti bir hata nedeniyle silinemedi.';
			case 'bookmarks.bookmarkOptions.deleteBookmark': return 'Yer işaretini sil';
			case 'bookmarks.bookmarkOptions.followingBookmarkDeleted': return 'Aşağıdaki yer işareti silinecek:';
			case 'bookmarks.bookmarkOptions.markingAsRead': return 'Okundu olarak işaretleniyor...';
			case 'bookmarks.bookmarkOptions.markingAsUnead': return 'Okunmadı olarak işaretleniyor...';
			case 'bookmarks.bookmarkOptions.markedAsReadSuccessfully': return 'Yer işareti başarıyla okundu olarak işaretlendi.';
			case 'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully': return 'Yer işareti başarıyla okunmadı olarak işaretlendi.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead': return 'Yer işareti okundu olarak işaretlenemedi.';
			case 'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread': return 'Yer işareti okunmadı olarak işaretlenemedi.';
			case 'bookmarks.bookmarkOptions.archivingBookmark': return 'Yer işareti arşivleniyor...';
			case 'bookmarks.bookmarkOptions.unarchivingBookmark': return 'Yer işareti arşivden çıkarılıyor...';
			case 'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully': return 'Yer işareti başarıyla arşivlendi.';
			case 'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully': return 'Yer işareti başarıyla arşivden kaldırıldı.';
			case 'bookmarks.bookmarkOptions.bookmarkNotArchived': return 'Yer işareti arşivlenemedi.';
			case 'bookmarks.bookmarkOptions.bookmarkNotUnrchived': return 'Yer işareti arşivden çıkarılamadı.';
			case 'bookmarks.bookmarkOptions.shareThirdPartyApp': return 'Üçüncü taraf bir uygulama kullanarak paylaşma';
			case 'bookmarks.bookmarkOptions.shareInternally': return 'Dahili olarak paylaşın';
			case 'bookmarks.bookmarkOptions.unshareInternally': return 'Dahili olarak paylaşımı kaldır';
			case 'bookmarks.shareOptions.shareOptions': return 'Paylaşım seçenekleri';
			case 'bookmarks.shareOptions.shareInternally': return 'Dahili olarak paylaşın';
			case 'bookmarks.shareOptions.unshareInternally': return 'Dahili olarak paylaşımı kaldır';
			case 'bookmarks.shareOptions.shareInternallyDescription': return 'Bu Linkding örneğinin geri kalan kullanıcılarıyla dahili olarak paylaşın';
			case 'bookmarks.shareOptions.unshareInternallyDescription': return 'Dahili olarak paylaşılan bu yer işaretinin paylaşımını kaldır';
			case 'bookmarks.shareOptions.shareExternally': return 'Yer işareti bağlantısını harici olarak paylaş';
			case 'bookmarks.shareOptions.shareExternallyDescription': return 'Üçüncü taraf bir uygulama kullanarak yer işareti bağlantısını harici olarak paylaşın';
			case 'bookmarks.shareOptions.sharingBookmark': return 'Yer işareti paylaşılıyor...';
			case 'bookmarks.shareOptions.unsharingBookmark': return 'Yer işareti paylaşımı kaldırılıyor...';
			case 'bookmarks.shareOptions.bookmarkSharedSuccessfully': return 'Yer işareti başarıyla paylaşıldı.';
			case 'bookmarks.shareOptions.bookmarkNotShared': return 'Yer işareti paylaşılamadı.';
			case 'bookmarks.shareOptions.bookmarkUnsharedSuccessfully': return 'Yer işareti başarıyla paylaşılmadı.';
			case 'bookmarks.shareOptions.bookmarkNotUnshared': return 'Yer işareti paylaşımı kaldırılamadı.';
			case 'tags.tags': return 'Etiketler';
			case 'tags.created': return ({required Object created}) => 'Oluşturuldu: ${created}';
			case 'tags.createTag.createTag': return 'Etiket oluştur';
			case 'tags.createTag.name': return 'Adı';
			case 'tags.createTag.creatingTag': return 'Etiket oluşturuluyor...';
			case 'tags.createTag.errorCreatingTag': return 'Etiket oluşturulurken bir hata oluştu.';
			case 'tags.filteredBookmarks.noBookmarksWithThisTag': return 'Bu etikete sahip yer işareti yok';
			case 'tags.filteredBookmarks.noArchivedBookmarks': return 'Arşivlenmiş yer işareti yok';
			case 'tags.filteredBookmarks.noSharedBookmarks': return 'Paylaşılmış yer işareti yok';
			case 'settings.settings': return 'Ayarlar';
			case 'settings.appSettings': return 'Uygulama ayarları';
			case 'settings.aboutApp': return 'Uygulama hakkında';
			case 'settings.appVersion': return 'Uygulama sürümü';
			case 'settings.createdBy': return 'Geliştirici';
			case 'settings.visitGooglePlay': return 'Google Play\'deki uygulama sayfasını ziyaret et';
			case 'settings.visitGitHubRepo': return 'GitHub\'daki uygulama deposunu ziyaret et';
			case 'settings.linkdingRepository': return 'Linkding deposu';
			case 'settings.linkdingRepositoryDescription': return 'GitHub\'daki Linkding deposuna bağlantı';
			case 'settings.customization.customization': return 'Özelleştirme';
			case 'settings.customization.customizationDescription': return 'Uygulama temasını ve renk paletini ayarlayın.';
			case 'settings.customization.theme': return 'Tema';
			case 'settings.customization.light': return 'Açık';
			case 'settings.customization.dark': return 'Koyu';
			case 'settings.customization.systemDefined': return 'Sistem tanımlı';
			case 'settings.customization.color': return 'Renk';
			case 'settings.customization.useDynamicTheme': return 'Dinamik tema kullan';
			case 'settings.generalSettings.generalSettings': return 'Genel Ayarlar';
			case 'settings.generalSettings.generalSettingsDescription': return 'Uygulama için genel düzenlemeler.';
			case 'settings.generalSettings.bookmarks': return 'Yer İmleri';
			case 'settings.generalSettings.showFavicon': return 'Site simgesini göster';
			case 'settings.generalSettings.showFaviconDescription': return 'Her yer işaretinde web sitesinin simgesini gösterin.';
			case 'settings.generalSettings.disconnectFromServer': return 'Sunucu ile bağlantıyı kes';
			case 'settings.generalSettings.disconnectModal.title': return 'Bağlantıyı kes';
			case 'settings.generalSettings.disconnectModal.description': return 'Sunucu bağlantısını kesmek istediğinizden emin misiniz?\nİlk kuruluma yönlendirileceksiniz.';
			case 'settings.generalSettings.useInAppBrowser': return 'Uygulama tarayıcısında kullanın';
			case 'settings.generalSettings.useInAppBrowserDescription': return 'Yer işaretlerini sistem tarayıcısı yerine entegre tarayıcı ile açar. Tablet modunda dahili tarayıcı her zaman kullanılacaktır.';
			case 'webview.goBack': return 'Geri dön';
			case 'webview.goForward': return 'İleri git';
			case 'webview.reload': return 'Yenile';
			case 'webview.openInSystemBrowser': return 'Sistem tarayıcısında aç';
			case 'webview.copyLinkClipboard': return 'Bağlantıyı panoya kopyala';
			case 'webview.linkCopiedClipboard': return 'Bağlantı panoya kopyalandı.';
			case 'webview.share': return 'Paylaş';
			case 'colors.red': return 'Kırmızı';
			case 'colors.green': return 'Yeşil';
			case 'colors.blue': return 'Mavi';
			case 'colors.yellow': return 'Sarı';
			case 'colors.orange': return 'Turuncu';
			case 'colors.brown': return 'Kahverengi';
			case 'colors.cyan': return 'Camgöbeği';
			case 'colors.purple': return 'Mor';
			case 'colors.pink': return 'Pembe';
			case 'colors.deepOrange': return 'Koyu turuncu';
			case 'colors.indigo': return 'Çivit';
			default: return null;
		}
	}
}
