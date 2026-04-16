///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsCs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGenericCs generic = _TranslationsGenericCs._(_root);
	@override late final _TranslationsOnboardingCs onboarding = _TranslationsOnboardingCs._(_root);
	@override late final _TranslationsBookmarksCs bookmarks = _TranslationsBookmarksCs._(_root);
	@override late final _TranslationsTagsCs tags = _TranslationsTagsCs._(_root);
	@override late final _TranslationsSettingsCs settings = _TranslationsSettingsCs._(_root);
	@override late final _TranslationsWebviewCs webview = _TranslationsWebviewCs._(_root);
	@override late final _TranslationsColorsCs colors = _TranslationsColorsCs._(_root);
}

// Path: generic
class _TranslationsGenericCs implements TranslationsGenericEn {
	_TranslationsGenericCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Potvrdit';
	@override String get cancel => 'Zrušit';
	@override String get next => 'Další';
	@override String get save => 'Uložit';
	@override String get close => 'Zavřít';
	@override String get error => 'Chyba';
	@override String get optional => 'Volitelné';
	@override String get authTokenNotValid => 'Váš autorizační token již není platný. Přihlaste se prosím znovu.';
	@override String get options => 'Možnosti';
}

// Path: onboarding
class _TranslationsOnboardingCs implements TranslationsOnboardingEn {
	_TranslationsOnboardingCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vítejte v Linkdy';
	@override String get subtitle => 'Aplikace pro správu vašich záložek.';
	@override String get start => 'Začít';
	@override String get next => 'Další';
	@override String get previous => 'Předchozí';
	@override String get serverRequired => 'Vyžadován server';
	@override String get serverRequiredDescription => 'Linkdy není samostatná aplikace, ke svému chodu vyžaduje server Linkding.\nPro použití této aplikace musíte nasadit Linkding na svůj domácí server, VPS nebo jiný počítač.';
	@override String get installationInstructions => 'Pokyny k instalaci naleznete v oficiálním úložišti na GitHubu.';
	@override String get serverRunningConfirmation => 'Potvrzuji, že mám spuštěnou instanci serveru Linkding.';
	@override String get createConnection => 'Vytvořit připojení';
	@override String get createConnectionSubtitle => 'Zadejte údaje potřebné pro připojení k vašemu serveru.';
	@override String get ipAddressOrDomain => 'IP adresa nebo doména';
	@override String get port => 'Port';
	@override String get path => 'Cesta';
	@override String get invalidPath => 'Neplatná cesta';
	@override String get token => 'Token';
	@override String get required => 'Povinné';
	@override String get serverDetails => 'Podrobnosti o serveru';
	@override String get authentication => 'Autentizace';
	@override String get testConnectionUrl => 'Testovat URL připojení';
	@override String get connectionServerEstablished => 'Připojení k serveru bylo navázáno';
	@override String get testingConnection => 'Testování připojení...';
	@override String get connectionServerFailed => 'Připojení k serveru selhalo';
	@override String get connect => 'Připojit';
	@override String get connecting => 'Připojování...';
	@override String get cannotConnectToServer => 'Nelze se připojit k serveru.';
	@override String get invalidToken => 'Neplatný token.';
	@override String get invalidIpDomain => 'Neplatná IP adresa nebo doména';
	@override String get invalidPort => 'Neplatný port';
	@override String get tokenRequired => 'Token je povinný';
}

// Path: bookmarks
class _TranslationsBookmarksCs implements TranslationsBookmarksEn {
	_TranslationsBookmarksCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get bookmarks => 'Záložky';
	@override String get noBookmarksAdded => 'Žádné záložky nebyly přidány';
	@override String get cannotLoadBookmarks => 'Záložky nelze načíst';
	@override late final _TranslationsBookmarksDatesCs dates = _TranslationsBookmarksDatesCs._(_root);
	@override String get shared => 'Sdílené';
	@override String get archived => 'Archivované';
	@override String get showOnlyRead => 'Zobrazit pouze přečtené';
	@override String get showOnlyUnread => 'Zobrazit pouze nepřečtené';
	@override String get showAllBookmarks => 'Zobrazit všechny záložky';
	@override String get readStatus => 'Stav přečtení';
	@override String get all => 'Vše';
	@override String get unread => 'Nepřečtené';
	@override String get read => 'Přečtené';
	@override String get filterSort => 'Filtrovat a třídit';
	@override String get sorting => 'Třídění';
	@override String get date => 'Datum';
	@override String get title => 'Název';
	@override String get ascendant => 'Vzestupně';
	@override String get descendant => 'Sestupně';
	@override late final _TranslationsBookmarksAddBookmarkCs addBookmark = _TranslationsBookmarksAddBookmarkCs._(_root);
	@override late final _TranslationsBookmarksSearchCs search = _TranslationsBookmarksSearchCs._(_root);
	@override late final _TranslationsBookmarksBookmarkOptionsCs bookmarkOptions = _TranslationsBookmarksBookmarkOptionsCs._(_root);
	@override late final _TranslationsBookmarksShareOptionsCs shareOptions = _TranslationsBookmarksShareOptionsCs._(_root);
}

// Path: tags
class _TranslationsTagsCs implements TranslationsTagsEn {
	_TranslationsTagsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get tags => 'Štítky';
	@override String created({required Object created}) => 'Vytvořeno: ${created}';
	@override late final _TranslationsTagsCreateTagCs createTag = _TranslationsTagsCreateTagCs._(_root);
	@override late final _TranslationsTagsFilteredBookmarksCs filteredBookmarks = _TranslationsTagsFilteredBookmarksCs._(_root);
}

// Path: settings
class _TranslationsSettingsCs implements TranslationsSettingsEn {
	_TranslationsSettingsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get settings => 'Nastavení';
	@override String get appSettings => 'Nastavení aplikace';
	@override String get aboutApp => 'O aplikaci';
	@override String get appVersion => 'Verze aplikace';
	@override String get createdBy => 'Vytvořil';
	@override String get visitGooglePlay => 'Navštívit Google Play';
	@override String get visitGitHubRepo => 'Navštívit GitHub repozitář';
	@override String get linkdingRepository => 'Úložiště Linkding';
	@override String get linkdingRepositoryDescription => 'Odkaz na GitHub repozitář Linkding';
	@override String get moreInfoApp => 'Více informací o aplikaci';
	@override String get moreInfoAppDescription => 'Odkaz na webové stránky aplikace';
	@override String get moreApps => 'Moje další aplikace';
	@override String get moreAppsDescription => 'Další projekty, kontakt, podpora a další';
	@override late final _TranslationsSettingsCustomizationCs customization = _TranslationsSettingsCustomizationCs._(_root);
	@override late final _TranslationsSettingsGeneralSettingsCs generalSettings = _TranslationsSettingsGeneralSettingsCs._(_root);
}

// Path: webview
class _TranslationsWebviewCs implements TranslationsWebviewEn {
	_TranslationsWebviewCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get goBack => 'Zpět';
	@override String get goForward => 'Vpřed';
	@override String get reload => 'Obnovit';
	@override String get openInSystemBrowser => 'Otevřít v systémovém prohlížeči';
	@override String get copyLinkClipboard => 'Kopírovat odkaz';
	@override String get linkCopiedClipboard => 'Odkaz byl zkopírován do schránky.';
	@override String get share => 'Sdílet';
	@override String get invalidBookmarkData => 'Záložka obsahuje neplatná nebo poškozená data.';
}

// Path: colors
class _TranslationsColorsCs implements TranslationsColorsEn {
	_TranslationsColorsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get red => 'Červená';
	@override String get green => 'Zelená';
	@override String get blue => 'Modrá';
	@override String get yellow => 'Žlutá';
	@override String get orange => 'Oranžová';
	@override String get brown => 'Hnědá';
	@override String get cyan => 'Azurová';
	@override String get purple => 'Fialová';
	@override String get pink => 'Růžová';
	@override String get deepOrange => 'Sytě oranžová';
	@override String get indigo => 'Indigová';
}

// Path: bookmarks.dates
class _TranslationsBookmarksDatesCs implements TranslationsBookmarksDatesEn {
	_TranslationsBookmarksDatesCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String todayAt({required Object time}) => 'Dnes, ${time}';
	@override String yesterdayAt({required Object time}) => 'Včera, ${time}';
}

// Path: bookmarks.addBookmark
class _TranslationsBookmarksAddBookmarkCs implements TranslationsBookmarksAddBookmarkEn {
	_TranslationsBookmarksAddBookmarkCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get addBookmark => 'Přidat novou záložku';
	@override String get editBookmark => 'Upravit záložku';
	@override String get bookmarkUrl => 'URL záložky';
	@override String get bookmarkDetails => 'Podrobnosti záložky';
	@override String get validateUrl => 'Ověřit URL';
	@override String get urlValid => 'URL je platná';
	@override String get urlNotValid => 'URL není platná';
	@override String get cannotCheckUrl => 'URL se nepodařilo ověřit, ale přesto ji můžete uložit.';
	@override String get invalidUrl => 'Neplatná URL';
	@override String get url => 'URL';
	@override String get checkingUrl => 'Ověřování URL...';
	@override String get title => 'Název';
	@override String get description => 'Popis';
	@override String get markAsUnread => 'Označit jako nepřečtené';
	@override String get markAsUnreadDescription => 'Nepřečtené záložky lze filtrovat a po přečtení označit jako přečtené.';
	@override String get notes => 'Poznámky';
	@override String get addNotes => 'Přidat poznámky';
	@override String get tags => 'Štítky';
	@override String get noTagsAdded => 'Žádné štítky nebyly přidány';
	@override String get tagNoWhitespaces => 'Štítek nesmí obsahovat mezery';
	@override String get addTag => 'Přidat štítek';
	@override String get others => 'Ostatní';
	@override String get savingBookmark => 'Ukládání záložky...';
	@override String get bookmarkSavedSuccessfully => 'Záložka byla úspěšně uložena.';
	@override String get errorSavingBookmark => 'Při ukládání záložky došlo k chybě.';
	@override String get leaveEmptyUseWebsiteTitle => 'Ponechte prázdné pro automatické načtení názvu z webu.';
	@override String get leaveEmptyUseWebsiteDescription => 'Ponechte prázdné pro automatické načtení popisu z webu.';
	@override String get share => 'Sdílet';
	@override String get shareDescription => 'Sdílejte tuto záložku s ostatními registrovanými nebo anonymními uživateli.';
	@override String get urlAlreadyBookmarked => 'Tato URL již v záložkách existuje. Formulář byl předvyplněn a uložením stávající záložku aktualizujete.';
}

// Path: bookmarks.search
class _TranslationsBookmarksSearchCs implements TranslationsBookmarksSearchEn {
	_TranslationsBookmarksSearchCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get searchBookmarks => 'Hledat záložky';
	@override String get clearSearch => 'Vymazat hledání';
	@override String get inputSearchTerm => 'Zadejte hledaný výraz';
	@override String get cannotSearchError => 'Kvůli chybě nelze vyhledávat';
	@override String get inputtedSearchTermNoResults => 'Pro zadaný výraz nebyly nalezeny žádné výsledky';
}

// Path: bookmarks.bookmarkOptions
class _TranslationsBookmarksBookmarkOptionsCs implements TranslationsBookmarksBookmarkOptionsEn {
	_TranslationsBookmarksBookmarkOptionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get edit => 'Upravit';
	@override String get delete => 'Smazat';
	@override String get read => 'Přečtené';
	@override String get unread => 'Nepřečtené';
	@override String get markAsUnread => 'Označit jako nepřečtené';
	@override String get markAsRead => 'Označit jako přečtené';
	@override String get shareOptions => 'Možnosti sdílení';
	@override String get shared => 'Sdílené';
	@override String get archive => 'Archivovat';
	@override String get unarchive => 'Obnovit z archivu';
	@override String get deletingBookmark => 'Mazání záložky...';
	@override String get bookmarkDeleted => 'Záložka byla smazána';
	@override String get bookmarkNotDeleted => 'Záložku se nepodařilo smazat kvůli chybě.';
	@override String get deleteBookmark => 'Smazat záložku';
	@override String get followingBookmarkDeleted => 'Tato záložka bude smazána:';
	@override String get markingAsRead => 'Označování jako přečtené...';
	@override String get markingAsUnead => 'Označování jako nepřečtené...';
	@override String get markedAsReadSuccessfully => 'Záložka byla označena jako přečtená.';
	@override String get markedAsUnreadSuccessfully => 'Záložka byla označena jako nepřečtená.';
	@override String get bookmarkNotMarkedAsRead => 'Záložku se nepodařilo označit jako přečtenou.';
	@override String get bookmarkNotMarkedAsUnread => 'Záložku se nepodařilo označit jako nepřečtenou.';
	@override String get archivingBookmark => 'Archivování záložky...';
	@override String get unarchivingBookmark => 'Obnovování záložky z archivu...';
	@override String get bookmarkArchivedSuccessfully => 'Záložka byla archivována.';
	@override String get bookmarkUnrchivedSuccessfully => 'Záložka byla úspěšně obnovena z archivu.';
	@override String get bookmarkNotArchived => 'Záložku se nepodařilo archivovat.';
	@override String get bookmarkNotUnrchived => 'Záložku se nepodařilo obnovit z archivu.';
	@override String get shareThirdPartyApp => 'Sdílet pomocí jiné aplikace';
	@override String get shareInternally => 'Sdílet interně';
	@override String get unshareInternally => 'Zrušit interní sdílení';
}

// Path: bookmarks.shareOptions
class _TranslationsBookmarksShareOptionsCs implements TranslationsBookmarksShareOptionsEn {
	_TranslationsBookmarksShareOptionsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get shareOptions => 'Možnosti sdílení';
	@override String get shareInternally => 'Sdílet interně';
	@override String get unshareInternally => 'Zrušit interní sdílení';
	@override String get shareInternallyDescription => 'Sdílet interně s ostatními uživateli této instance Linkding';
	@override String get unshareInternallyDescription => 'Zrušit interní sdílení této záložky';
	@override String get shareExternally => 'Sdílet URL záložky externě';
	@override String get shareExternallyDescription => 'Sdílet URL pomocí jiné aplikace v systému';
	@override String get sharingBookmark => 'Sdílení záložky...';
	@override String get unsharingBookmark => 'Rušení sdílení záložky...';
	@override String get bookmarkSharedSuccessfully => 'Záložka je nyní sdílena.';
	@override String get bookmarkNotShared => 'Záložku se nepodařilo sdílet.';
	@override String get bookmarkUnsharedSuccessfully => 'Interní sdílení bylo zrušeno.';
	@override String get bookmarkNotUnshared => 'Sdílení se nepodařilo zrušit.';
}

// Path: tags.createTag
class _TranslationsTagsCreateTagCs implements TranslationsTagsCreateTagEn {
	_TranslationsTagsCreateTagCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get createTag => 'Vytvořit štítek';
	@override String get name => 'Název';
	@override String get creatingTag => 'Vytváření štítku...';
	@override String get errorCreatingTag => 'Při vytváření štítku došlo k chybě.';
}

// Path: tags.filteredBookmarks
class _TranslationsTagsFilteredBookmarksCs implements TranslationsTagsFilteredBookmarksEn {
	_TranslationsTagsFilteredBookmarksCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get noBookmarksWithThisTag => 'Žádné záložky s tímto štítkem';
	@override String get noArchivedBookmarks => 'Žádné archivované záložky';
	@override String get noSharedBookmarks => 'Žádné sdílené záložky';
}

// Path: settings.customization
class _TranslationsSettingsCustomizationCs implements TranslationsSettingsCustomizationEn {
	_TranslationsSettingsCustomizationCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get customization => 'Přizpůsobení';
	@override String get customizationDescription => 'Nastavte motiv aplikace a barevnou paletu.';
	@override String get theme => 'Motiv';
	@override String get light => 'Světlý';
	@override String get dark => 'Tmavý';
	@override String get systemDefined => 'Dle systému';
	@override String get color => 'Barva';
	@override String get useDynamicTheme => 'Použít dynamický motiv';
}

// Path: settings.generalSettings
class _TranslationsSettingsGeneralSettingsCs implements TranslationsSettingsGeneralSettingsEn {
	_TranslationsSettingsGeneralSettingsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get generalSettings => 'Obecná nastavení';
	@override String get generalSettingsDescription => 'Obecná vylepšení pro aplikaci.';
	@override String get bookmarks => 'Záložky';
	@override String get showFavicon => 'Zobrazit ikony (favicon)';
	@override String get showFaviconDescription => 'Zobrazit ikonu webu u každé záložky.';
	@override String get disconnectFromServer => 'Odpojit od serveru';
	@override late final _TranslationsSettingsGeneralSettingsDisconnectModalCs disconnectModal = _TranslationsSettingsGeneralSettingsDisconnectModalCs._(_root);
	@override String get useInAppBrowser => 'Použít integrovaný prohlížeč';
	@override String get useInAppBrowserDescription => 'Otevírá záložky v aplikaci místo v systémovém prohlížeči. V režimu tabletu je tento prohlížeč používán vždy.';
	@override String get openLinksWith => 'Otevírat odkazy pomocí...';
	@override String get internalBrowser => 'Integrovaný prohlížeč aplikace';
	@override String get browserCustomTab => 'Vlastní karta prohlížeče';
	@override String get systemBrowser => 'Systémový prohlížeč';
	@override String get tags => 'Štítky';
	@override late final _TranslationsSettingsGeneralSettingsDefaultTagsCs defaultTags = _TranslationsSettingsGeneralSettingsDefaultTagsCs._(_root);
	@override String get others => 'Ostatní';
	@override String get setMarkAsUnreadDefault => 'Označit vždy jako nepřečtené';
	@override String get setMarkAsUnreadDefaultDescription => 'Při vytváření nové záložky bude automaticky přednastavena možnost „Označit jako nepřečtené“.';
	@override String get enableSlideOptions => 'Povolit gesta posouvání';
	@override String get enableSlideOptionsDescription => 'Povolit akce posunutím prstu v seznamu záložek';
}

// Path: settings.generalSettings.disconnectModal
class _TranslationsSettingsGeneralSettingsDisconnectModalCs implements TranslationsSettingsGeneralSettingsDisconnectModalEn {
	_TranslationsSettingsGeneralSettingsDisconnectModalCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Odpojit se?';
	@override String get description => 'Opravdu se chcete odpojit od serveru?\nBudete přesměrováni na úvodní nastavení.';
}

// Path: settings.generalSettings.defaultTags
class _TranslationsSettingsGeneralSettingsDefaultTagsCs implements TranslationsSettingsGeneralSettingsDefaultTagsEn {
	_TranslationsSettingsGeneralSettingsDefaultTagsCs._(this._root);

	final TranslationsCs _root; // ignore: unused_field

	// Translations
	@override String get defaultTags => 'Výchozí štítky';
	@override String get defaultTagsDescription => 'Definujte seznam štítků, které budou automaticky přidány k nové záložce';
	@override String get newTag => 'Nový štítek';
	@override String get addTag => 'Přidat štítek';
	@override String get removeThisTag => 'Odebrat tento štítek';
	@override String get noDefaultTags => 'Nejsou nastaveny žádné výchozí štítky';
}

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'generic.confirm' => 'Potvrdit',
			'generic.cancel' => 'Zrušit',
			'generic.next' => 'Další',
			'generic.save' => 'Uložit',
			'generic.close' => 'Zavřít',
			'generic.error' => 'Chyba',
			'generic.optional' => 'Volitelné',
			'generic.authTokenNotValid' => 'Váš autorizační token již není platný. Přihlaste se prosím znovu.',
			'generic.options' => 'Možnosti',
			'onboarding.title' => 'Vítejte v Linkdy',
			'onboarding.subtitle' => 'Aplikace pro správu vašich záložek.',
			'onboarding.start' => 'Začít',
			'onboarding.next' => 'Další',
			'onboarding.previous' => 'Předchozí',
			'onboarding.serverRequired' => 'Vyžadován server',
			'onboarding.serverRequiredDescription' => 'Linkdy není samostatná aplikace, ke svému chodu vyžaduje server Linkding.\nPro použití této aplikace musíte nasadit Linkding na svůj domácí server, VPS nebo jiný počítač.',
			'onboarding.installationInstructions' => 'Pokyny k instalaci naleznete v oficiálním úložišti na GitHubu.',
			'onboarding.serverRunningConfirmation' => 'Potvrzuji, že mám spuštěnou instanci serveru Linkding.',
			'onboarding.createConnection' => 'Vytvořit připojení',
			'onboarding.createConnectionSubtitle' => 'Zadejte údaje potřebné pro připojení k vašemu serveru.',
			'onboarding.ipAddressOrDomain' => 'IP adresa nebo doména',
			'onboarding.port' => 'Port',
			'onboarding.path' => 'Cesta',
			'onboarding.invalidPath' => 'Neplatná cesta',
			'onboarding.token' => 'Token',
			'onboarding.required' => 'Povinné',
			'onboarding.serverDetails' => 'Podrobnosti o serveru',
			'onboarding.authentication' => 'Autentizace',
			'onboarding.testConnectionUrl' => 'Testovat URL připojení',
			'onboarding.connectionServerEstablished' => 'Připojení k serveru bylo navázáno',
			'onboarding.testingConnection' => 'Testování připojení...',
			'onboarding.connectionServerFailed' => 'Připojení k serveru selhalo',
			'onboarding.connect' => 'Připojit',
			'onboarding.connecting' => 'Připojování...',
			'onboarding.cannotConnectToServer' => 'Nelze se připojit k serveru.',
			'onboarding.invalidToken' => 'Neplatný token.',
			'onboarding.invalidIpDomain' => 'Neplatná IP adresa nebo doména',
			'onboarding.invalidPort' => 'Neplatný port',
			'onboarding.tokenRequired' => 'Token je povinný',
			'bookmarks.bookmarks' => 'Záložky',
			'bookmarks.noBookmarksAdded' => 'Žádné záložky nebyly přidány',
			'bookmarks.cannotLoadBookmarks' => 'Záložky nelze načíst',
			'bookmarks.dates.todayAt' => ({required Object time}) => 'Dnes, ${time}',
			'bookmarks.dates.yesterdayAt' => ({required Object time}) => 'Včera, ${time}',
			'bookmarks.shared' => 'Sdílené',
			'bookmarks.archived' => 'Archivované',
			'bookmarks.showOnlyRead' => 'Zobrazit pouze přečtené',
			'bookmarks.showOnlyUnread' => 'Zobrazit pouze nepřečtené',
			'bookmarks.showAllBookmarks' => 'Zobrazit všechny záložky',
			'bookmarks.readStatus' => 'Stav přečtení',
			'bookmarks.all' => 'Vše',
			'bookmarks.unread' => 'Nepřečtené',
			'bookmarks.read' => 'Přečtené',
			'bookmarks.filterSort' => 'Filtrovat a třídit',
			'bookmarks.sorting' => 'Třídění',
			'bookmarks.date' => 'Datum',
			'bookmarks.title' => 'Název',
			'bookmarks.ascendant' => 'Vzestupně',
			'bookmarks.descendant' => 'Sestupně',
			'bookmarks.addBookmark.addBookmark' => 'Přidat novou záložku',
			'bookmarks.addBookmark.editBookmark' => 'Upravit záložku',
			'bookmarks.addBookmark.bookmarkUrl' => 'URL záložky',
			'bookmarks.addBookmark.bookmarkDetails' => 'Podrobnosti záložky',
			'bookmarks.addBookmark.validateUrl' => 'Ověřit URL',
			'bookmarks.addBookmark.urlValid' => 'URL je platná',
			'bookmarks.addBookmark.urlNotValid' => 'URL není platná',
			'bookmarks.addBookmark.cannotCheckUrl' => 'URL se nepodařilo ověřit, ale přesto ji můžete uložit.',
			'bookmarks.addBookmark.invalidUrl' => 'Neplatná URL',
			'bookmarks.addBookmark.url' => 'URL',
			'bookmarks.addBookmark.checkingUrl' => 'Ověřování URL...',
			'bookmarks.addBookmark.title' => 'Název',
			'bookmarks.addBookmark.description' => 'Popis',
			'bookmarks.addBookmark.markAsUnread' => 'Označit jako nepřečtené',
			'bookmarks.addBookmark.markAsUnreadDescription' => 'Nepřečtené záložky lze filtrovat a po přečtení označit jako přečtené.',
			'bookmarks.addBookmark.notes' => 'Poznámky',
			'bookmarks.addBookmark.addNotes' => 'Přidat poznámky',
			'bookmarks.addBookmark.tags' => 'Štítky',
			'bookmarks.addBookmark.noTagsAdded' => 'Žádné štítky nebyly přidány',
			'bookmarks.addBookmark.tagNoWhitespaces' => 'Štítek nesmí obsahovat mezery',
			'bookmarks.addBookmark.addTag' => 'Přidat štítek',
			'bookmarks.addBookmark.others' => 'Ostatní',
			'bookmarks.addBookmark.savingBookmark' => 'Ukládání záložky...',
			'bookmarks.addBookmark.bookmarkSavedSuccessfully' => 'Záložka byla úspěšně uložena.',
			'bookmarks.addBookmark.errorSavingBookmark' => 'Při ukládání záložky došlo k chybě.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle' => 'Ponechte prázdné pro automatické načtení názvu z webu.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription' => 'Ponechte prázdné pro automatické načtení popisu z webu.',
			'bookmarks.addBookmark.share' => 'Sdílet',
			'bookmarks.addBookmark.shareDescription' => 'Sdílejte tuto záložku s ostatními registrovanými nebo anonymními uživateli.',
			'bookmarks.addBookmark.urlAlreadyBookmarked' => 'Tato URL již v záložkách existuje. Formulář byl předvyplněn a uložením stávající záložku aktualizujete.',
			'bookmarks.search.searchBookmarks' => 'Hledat záložky',
			'bookmarks.search.clearSearch' => 'Vymazat hledání',
			'bookmarks.search.inputSearchTerm' => 'Zadejte hledaný výraz',
			'bookmarks.search.cannotSearchError' => 'Kvůli chybě nelze vyhledávat',
			'bookmarks.search.inputtedSearchTermNoResults' => 'Pro zadaný výraz nebyly nalezeny žádné výsledky',
			'bookmarks.bookmarkOptions.edit' => 'Upravit',
			'bookmarks.bookmarkOptions.delete' => 'Smazat',
			'bookmarks.bookmarkOptions.read' => 'Přečtené',
			'bookmarks.bookmarkOptions.unread' => 'Nepřečtené',
			'bookmarks.bookmarkOptions.markAsUnread' => 'Označit jako nepřečtené',
			'bookmarks.bookmarkOptions.markAsRead' => 'Označit jako přečtené',
			'bookmarks.bookmarkOptions.shareOptions' => 'Možnosti sdílení',
			'bookmarks.bookmarkOptions.shared' => 'Sdílené',
			'bookmarks.bookmarkOptions.archive' => 'Archivovat',
			'bookmarks.bookmarkOptions.unarchive' => 'Obnovit z archivu',
			'bookmarks.bookmarkOptions.deletingBookmark' => 'Mazání záložky...',
			'bookmarks.bookmarkOptions.bookmarkDeleted' => 'Záložka byla smazána',
			'bookmarks.bookmarkOptions.bookmarkNotDeleted' => 'Záložku se nepodařilo smazat kvůli chybě.',
			'bookmarks.bookmarkOptions.deleteBookmark' => 'Smazat záložku',
			'bookmarks.bookmarkOptions.followingBookmarkDeleted' => 'Tato záložka bude smazána:',
			'bookmarks.bookmarkOptions.markingAsRead' => 'Označování jako přečtené...',
			'bookmarks.bookmarkOptions.markingAsUnead' => 'Označování jako nepřečtené...',
			'bookmarks.bookmarkOptions.markedAsReadSuccessfully' => 'Záložka byla označena jako přečtená.',
			'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully' => 'Záložka byla označena jako nepřečtená.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead' => 'Záložku se nepodařilo označit jako přečtenou.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread' => 'Záložku se nepodařilo označit jako nepřečtenou.',
			'bookmarks.bookmarkOptions.archivingBookmark' => 'Archivování záložky...',
			'bookmarks.bookmarkOptions.unarchivingBookmark' => 'Obnovování záložky z archivu...',
			'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully' => 'Záložka byla archivována.',
			'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully' => 'Záložka byla úspěšně obnovena z archivu.',
			'bookmarks.bookmarkOptions.bookmarkNotArchived' => 'Záložku se nepodařilo archivovat.',
			'bookmarks.bookmarkOptions.bookmarkNotUnrchived' => 'Záložku se nepodařilo obnovit z archivu.',
			'bookmarks.bookmarkOptions.shareThirdPartyApp' => 'Sdílet pomocí jiné aplikace',
			'bookmarks.bookmarkOptions.shareInternally' => 'Sdílet interně',
			'bookmarks.bookmarkOptions.unshareInternally' => 'Zrušit interní sdílení',
			'bookmarks.shareOptions.shareOptions' => 'Možnosti sdílení',
			'bookmarks.shareOptions.shareInternally' => 'Sdílet interně',
			'bookmarks.shareOptions.unshareInternally' => 'Zrušit interní sdílení',
			'bookmarks.shareOptions.shareInternallyDescription' => 'Sdílet interně s ostatními uživateli této instance Linkding',
			'bookmarks.shareOptions.unshareInternallyDescription' => 'Zrušit interní sdílení této záložky',
			'bookmarks.shareOptions.shareExternally' => 'Sdílet URL záložky externě',
			'bookmarks.shareOptions.shareExternallyDescription' => 'Sdílet URL pomocí jiné aplikace v systému',
			'bookmarks.shareOptions.sharingBookmark' => 'Sdílení záložky...',
			'bookmarks.shareOptions.unsharingBookmark' => 'Rušení sdílení záložky...',
			'bookmarks.shareOptions.bookmarkSharedSuccessfully' => 'Záložka je nyní sdílena.',
			'bookmarks.shareOptions.bookmarkNotShared' => 'Záložku se nepodařilo sdílet.',
			'bookmarks.shareOptions.bookmarkUnsharedSuccessfully' => 'Interní sdílení bylo zrušeno.',
			'bookmarks.shareOptions.bookmarkNotUnshared' => 'Sdílení se nepodařilo zrušit.',
			'tags.tags' => 'Štítky',
			'tags.created' => ({required Object created}) => 'Vytvořeno: ${created}',
			'tags.createTag.createTag' => 'Vytvořit štítek',
			'tags.createTag.name' => 'Název',
			'tags.createTag.creatingTag' => 'Vytváření štítku...',
			'tags.createTag.errorCreatingTag' => 'Při vytváření štítku došlo k chybě.',
			'tags.filteredBookmarks.noBookmarksWithThisTag' => 'Žádné záložky s tímto štítkem',
			'tags.filteredBookmarks.noArchivedBookmarks' => 'Žádné archivované záložky',
			'tags.filteredBookmarks.noSharedBookmarks' => 'Žádné sdílené záložky',
			'settings.settings' => 'Nastavení',
			'settings.appSettings' => 'Nastavení aplikace',
			'settings.aboutApp' => 'O aplikaci',
			'settings.appVersion' => 'Verze aplikace',
			'settings.createdBy' => 'Vytvořil',
			'settings.visitGooglePlay' => 'Navštívit Google Play',
			'settings.visitGitHubRepo' => 'Navštívit GitHub repozitář',
			'settings.linkdingRepository' => 'Úložiště Linkding',
			'settings.linkdingRepositoryDescription' => 'Odkaz na GitHub repozitář Linkding',
			'settings.moreInfoApp' => 'Více informací o aplikaci',
			'settings.moreInfoAppDescription' => 'Odkaz na webové stránky aplikace',
			'settings.moreApps' => 'Moje další aplikace',
			'settings.moreAppsDescription' => 'Další projekty, kontakt, podpora a další',
			'settings.customization.customization' => 'Přizpůsobení',
			'settings.customization.customizationDescription' => 'Nastavte motiv aplikace a barevnou paletu.',
			'settings.customization.theme' => 'Motiv',
			'settings.customization.light' => 'Světlý',
			'settings.customization.dark' => 'Tmavý',
			'settings.customization.systemDefined' => 'Dle systému',
			'settings.customization.color' => 'Barva',
			'settings.customization.useDynamicTheme' => 'Použít dynamický motiv',
			'settings.generalSettings.generalSettings' => 'Obecná nastavení',
			'settings.generalSettings.generalSettingsDescription' => 'Obecná vylepšení pro aplikaci.',
			'settings.generalSettings.bookmarks' => 'Záložky',
			'settings.generalSettings.showFavicon' => 'Zobrazit ikony (favicon)',
			'settings.generalSettings.showFaviconDescription' => 'Zobrazit ikonu webu u každé záložky.',
			'settings.generalSettings.disconnectFromServer' => 'Odpojit od serveru',
			'settings.generalSettings.disconnectModal.title' => 'Odpojit se?',
			'settings.generalSettings.disconnectModal.description' => 'Opravdu se chcete odpojit od serveru?\nBudete přesměrováni na úvodní nastavení.',
			'settings.generalSettings.useInAppBrowser' => 'Použít integrovaný prohlížeč',
			'settings.generalSettings.useInAppBrowserDescription' => 'Otevírá záložky v aplikaci místo v systémovém prohlížeči. V režimu tabletu je tento prohlížeč používán vždy.',
			'settings.generalSettings.openLinksWith' => 'Otevírat odkazy pomocí...',
			'settings.generalSettings.internalBrowser' => 'Integrovaný prohlížeč aplikace',
			'settings.generalSettings.browserCustomTab' => 'Vlastní karta prohlížeče',
			'settings.generalSettings.systemBrowser' => 'Systémový prohlížeč',
			'settings.generalSettings.tags' => 'Štítky',
			'settings.generalSettings.defaultTags.defaultTags' => 'Výchozí štítky',
			'settings.generalSettings.defaultTags.defaultTagsDescription' => 'Definujte seznam štítků, které budou automaticky přidány k nové záložce',
			'settings.generalSettings.defaultTags.newTag' => 'Nový štítek',
			'settings.generalSettings.defaultTags.addTag' => 'Přidat štítek',
			'settings.generalSettings.defaultTags.removeThisTag' => 'Odebrat tento štítek',
			'settings.generalSettings.defaultTags.noDefaultTags' => 'Nejsou nastaveny žádné výchozí štítky',
			'settings.generalSettings.others' => 'Ostatní',
			'settings.generalSettings.setMarkAsUnreadDefault' => 'Označit vždy jako nepřečtené',
			'settings.generalSettings.setMarkAsUnreadDefaultDescription' => 'Při vytváření nové záložky bude automaticky přednastavena možnost „Označit jako nepřečtené“.',
			'settings.generalSettings.enableSlideOptions' => 'Povolit gesta posouvání',
			'settings.generalSettings.enableSlideOptionsDescription' => 'Povolit akce posunutím prstu v seznamu záložek',
			'webview.goBack' => 'Zpět',
			'webview.goForward' => 'Vpřed',
			'webview.reload' => 'Obnovit',
			'webview.openInSystemBrowser' => 'Otevřít v systémovém prohlížeči',
			'webview.copyLinkClipboard' => 'Kopírovat odkaz',
			'webview.linkCopiedClipboard' => 'Odkaz byl zkopírován do schránky.',
			'webview.share' => 'Sdílet',
			'webview.invalidBookmarkData' => 'Záložka obsahuje neplatná nebo poškozená data.',
			'colors.red' => 'Červená',
			'colors.green' => 'Zelená',
			'colors.blue' => 'Modrá',
			'colors.yellow' => 'Žlutá',
			'colors.orange' => 'Oranžová',
			'colors.brown' => 'Hnědá',
			'colors.cyan' => 'Azurová',
			'colors.purple' => 'Fialová',
			'colors.pink' => 'Růžová',
			'colors.deepOrange' => 'Sytě oranžová',
			'colors.indigo' => 'Indigová',
			_ => null,
		};
	}
}
