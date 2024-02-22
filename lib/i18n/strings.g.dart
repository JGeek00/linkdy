/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 48 (24 per locale)
///
/// Built on 2024-02-22 at 10:40 UTC

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
	es(languageCode: 'es', build: _StringsEs.build);

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
	late final _StringsOnboardingEn onboarding = _StringsOnboardingEn._(_root);
	late final _StringsLinksEn links = _StringsLinksEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
}

// Path: onboarding
class _StringsOnboardingEn {
	_StringsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Welcome to My Linkding';
	String get subtitle => 'An application to manage your bookmarks.';
	String get start => 'Start';
	String get next => 'Next';
	String get previous => 'Previous';
	String get serverRequired => 'Servidor requerido';
	String get serverRequiredDescription => 'My Linkding it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.';
	String get installationInstructions => 'Check the installation instructions on the official GitHub repository.';
	String get serverRunningConfirmation => 'I confirm that I have an instance of the Linkding server already running.';
	String get createConnection => 'Create a connection';
	String get createConnectionSubtitle => 'Enter all the required details to create a connection to your server.';
	String get ipAddressOrDomain => 'IP address or domain';
	String get port => 'Port';
	String get token => 'Token';
	String get required => 'Required';
	String get serverDetails => 'Server details';
	String get authentication => 'Authentication';
	String get testConnectionUrl => 'Test connection url';
	String get connect => 'Connect';
	String get connecting => 'Connecting...';
	String get cannotConnectToServer => 'Cannot connect to the server.';
}

// Path: links
class _StringsLinksEn {
	_StringsLinksEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get links => 'Links';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get settings => 'Settings';
	String get disconnectFromServer => 'Disconnect from server';
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
	@override late final _StringsOnboardingEs onboarding = _StringsOnboardingEs._(_root);
	@override late final _StringsLinksEs links = _StringsLinksEs._(_root);
	@override late final _StringsSettingsEs settings = _StringsSettingsEs._(_root);
}

// Path: onboarding
class _StringsOnboardingEs implements _StringsOnboardingEn {
	_StringsOnboardingEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenido a My Linkding';
	@override String get subtitle => 'Una aplicación para gestionar tus enlaces favoritos.';
	@override String get start => 'Comenzar';
	@override String get next => 'Siguiente';
	@override String get previous => 'Anterior';
	@override String get serverRequired => 'Servidor requerido';
	@override String get serverRequiredDescription => 'My Linkding no es una aplicación independiente, requiere el servidor Linkding para funcionar.\nPara utilizar esta aplicación, debe instalar Linkding en su servidor doméstico, VPS o cualquier otro ordenador.';
	@override String get installationInstructions => 'Mira las instrucciones de instalación en el repositorio oficial en GitHub.';
	@override String get serverRunningConfirmation => 'Confirmo que tengo una instancia del servidor Linkding ya en funcionamiento.';
	@override String get createConnection => 'Crear una conexión';
	@override String get createConnectionSubtitle => 'Introduce todos los detalles requeridos para crear una conexión con el servidor';
	@override String get ipAddressOrDomain => 'Dirección IP o dominio';
	@override String get port => 'Puerto';
	@override String get token => 'Token';
	@override String get required => 'Requerido';
	@override String get serverDetails => 'Detalles del servidor';
	@override String get authentication => 'Autenticación';
	@override String get testConnectionUrl => 'Probar URL de conexión';
	@override String get connect => 'Conectar';
	@override String get connecting => 'Conectando...';
	@override String get cannotConnectToServer => 'No se puede conectar con el servidor.';
}

// Path: links
class _StringsLinksEs implements _StringsLinksEn {
	_StringsLinksEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get links => 'Enlaces';
}

// Path: settings
class _StringsSettingsEs implements _StringsSettingsEn {
	_StringsSettingsEs._(this._root);

	@override final _StringsEs _root; // ignore: unused_field

	// Translations
	@override String get settings => 'Ajustes';
	@override String get disconnectFromServer => 'Desconectar del servidor';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onboarding.title': return 'Welcome to My Linkding';
			case 'onboarding.subtitle': return 'An application to manage your bookmarks.';
			case 'onboarding.start': return 'Start';
			case 'onboarding.next': return 'Next';
			case 'onboarding.previous': return 'Previous';
			case 'onboarding.serverRequired': return 'Servidor requerido';
			case 'onboarding.serverRequiredDescription': return 'My Linkding it\'s not an standalone app, it requires the Linkding server to work.\nIn order to use this application, you must deploy Linkding on your home server, VPS or any other computer.';
			case 'onboarding.installationInstructions': return 'Check the installation instructions on the official GitHub repository.';
			case 'onboarding.serverRunningConfirmation': return 'I confirm that I have an instance of the Linkding server already running.';
			case 'onboarding.createConnection': return 'Create a connection';
			case 'onboarding.createConnectionSubtitle': return 'Enter all the required details to create a connection to your server.';
			case 'onboarding.ipAddressOrDomain': return 'IP address or domain';
			case 'onboarding.port': return 'Port';
			case 'onboarding.token': return 'Token';
			case 'onboarding.required': return 'Required';
			case 'onboarding.serverDetails': return 'Server details';
			case 'onboarding.authentication': return 'Authentication';
			case 'onboarding.testConnectionUrl': return 'Test connection url';
			case 'onboarding.connect': return 'Connect';
			case 'onboarding.connecting': return 'Connecting...';
			case 'onboarding.cannotConnectToServer': return 'Cannot connect to the server.';
			case 'links.links': return 'Links';
			case 'settings.settings': return 'Settings';
			case 'settings.disconnectFromServer': return 'Disconnect from server';
			default: return null;
		}
	}
}

extension on _StringsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'onboarding.title': return 'Bienvenido a My Linkding';
			case 'onboarding.subtitle': return 'Una aplicación para gestionar tus enlaces favoritos.';
			case 'onboarding.start': return 'Comenzar';
			case 'onboarding.next': return 'Siguiente';
			case 'onboarding.previous': return 'Anterior';
			case 'onboarding.serverRequired': return 'Servidor requerido';
			case 'onboarding.serverRequiredDescription': return 'My Linkding no es una aplicación independiente, requiere el servidor Linkding para funcionar.\nPara utilizar esta aplicación, debe instalar Linkding en su servidor doméstico, VPS o cualquier otro ordenador.';
			case 'onboarding.installationInstructions': return 'Mira las instrucciones de instalación en el repositorio oficial en GitHub.';
			case 'onboarding.serverRunningConfirmation': return 'Confirmo que tengo una instancia del servidor Linkding ya en funcionamiento.';
			case 'onboarding.createConnection': return 'Crear una conexión';
			case 'onboarding.createConnectionSubtitle': return 'Introduce todos los detalles requeridos para crear una conexión con el servidor';
			case 'onboarding.ipAddressOrDomain': return 'Dirección IP o dominio';
			case 'onboarding.port': return 'Puerto';
			case 'onboarding.token': return 'Token';
			case 'onboarding.required': return 'Requerido';
			case 'onboarding.serverDetails': return 'Detalles del servidor';
			case 'onboarding.authentication': return 'Autenticación';
			case 'onboarding.testConnectionUrl': return 'Probar URL de conexión';
			case 'onboarding.connect': return 'Conectar';
			case 'onboarding.connecting': return 'Conectando...';
			case 'onboarding.cannotConnectToServer': return 'No se puede conectar con el servidor.';
			case 'links.links': return 'Enlaces';
			case 'settings.settings': return 'Ajustes';
			case 'settings.disconnectFromServer': return 'Desconectar del servidor';
			default: return null;
		}
	}
}
