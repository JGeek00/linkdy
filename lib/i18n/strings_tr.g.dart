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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGenericTr generic = _TranslationsGenericTr._(_root);
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override late final _TranslationsBookmarksTr bookmarks = _TranslationsBookmarksTr._(_root);
	@override late final _TranslationsTagsTr tags = _TranslationsTagsTr._(_root);
	@override late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
	@override late final _TranslationsWebviewTr webview = _TranslationsWebviewTr._(_root);
	@override late final _TranslationsColorsTr colors = _TranslationsColorsTr._(_root);
}

// Path: generic
class _TranslationsGenericTr implements TranslationsGenericEn {
	_TranslationsGenericTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsBookmarksTr implements TranslationsBookmarksEn {
	_TranslationsBookmarksTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get bookmarks => 'Yer İşaretleri';
	@override String get noBookmarksAdded => 'Yer işareti eklenmedi';
	@override String get cannotLoadBookmarks => 'Yer işaretleri yüklenemiyor';
	@override late final _TranslationsBookmarksDatesTr dates = _TranslationsBookmarksDatesTr._(_root);
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
	@override late final _TranslationsBookmarksAddBookmarkTr addBookmark = _TranslationsBookmarksAddBookmarkTr._(_root);
	@override late final _TranslationsBookmarksSearchTr search = _TranslationsBookmarksSearchTr._(_root);
	@override late final _TranslationsBookmarksBookmarkOptionsTr bookmarkOptions = _TranslationsBookmarksBookmarkOptionsTr._(_root);
	@override late final _TranslationsBookmarksShareOptionsTr shareOptions = _TranslationsBookmarksShareOptionsTr._(_root);
}

// Path: tags
class _TranslationsTagsTr implements TranslationsTagsEn {
	_TranslationsTagsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get tags => 'Etiketler';
	@override String created({required Object created}) => 'Oluşturuldu: ${created}';
	@override late final _TranslationsTagsCreateTagTr createTag = _TranslationsTagsCreateTagTr._(_root);
	@override late final _TranslationsTagsFilteredBookmarksTr filteredBookmarks = _TranslationsTagsFilteredBookmarksTr._(_root);
}

// Path: settings
class _TranslationsSettingsTr implements TranslationsSettingsEn {
	_TranslationsSettingsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
	@override String get moreInfoApp => 'Uygulama hakkında daha fazla bilgi';
	@override String get moreInfoAppDescription => 'Uygulamanın bilgi sayfasına bağlantı';
	@override String get moreApps => 'Diğer uygulamalarım';
	@override String get moreAppsDescription => 'Daha fazla uygulama, iletişim, bağış ve daha fazlası';
	@override late final _TranslationsSettingsCustomizationTr customization = _TranslationsSettingsCustomizationTr._(_root);
	@override late final _TranslationsSettingsGeneralSettingsTr generalSettings = _TranslationsSettingsGeneralSettingsTr._(_root);
}

// Path: webview
class _TranslationsWebviewTr implements TranslationsWebviewEn {
	_TranslationsWebviewTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get goBack => 'Geri dön';
	@override String get goForward => 'İleri git';
	@override String get reload => 'Yenile';
	@override String get openInSystemBrowser => 'Sistem tarayıcısında aç';
	@override String get copyLinkClipboard => 'Bağlantıyı panoya kopyala';
	@override String get linkCopiedClipboard => 'Bağlantı panoya kopyalandı.';
	@override String get share => 'Paylaş';
	@override String get invalidBookmarkData => 'The bookmark has invalid data or it\'s corrupted.';
}

// Path: colors
class _TranslationsColorsTr implements TranslationsColorsEn {
	_TranslationsColorsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsBookmarksDatesTr implements TranslationsBookmarksDatesEn {
	_TranslationsBookmarksDatesTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String todayAt({required Object time}) => 'Bugün, ${time}';
	@override String yesterdayAt({required Object time}) => 'Dün, ${time}';
}

// Path: bookmarks.addBookmark
class _TranslationsBookmarksAddBookmarkTr implements TranslationsBookmarksAddBookmarkEn {
	_TranslationsBookmarksAddBookmarkTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get addBookmark => 'Yeni yer işareti ekle';
	@override String get editBookmark => 'Yer işaretini düzenle';
	@override String get bookmarkUrl => 'Yer İşareti bağlantısı';
	@override String get bookmarkDetails => 'Yer işareti ayrıntıları';
	@override String get validateUrl => 'Bağlantı adresini doğrula';
	@override String get urlValid => 'Bağlantı adresi geçerli';
	@override String get urlNotValid => 'Bağlantı adresi geçerli değil';
	@override String get cannotCheckUrl => 'Bağlantı adresi kontrol edilemedi, ancak yine de kaydedebilirsiniz.';
	@override String get invalidUrl => 'Geçersiz bağlantı adresi';
	@override String get url => 'Bağlantı adresi';
	@override String get checkingUrl => 'Bağlantı adresi kontrol ediliyor...';
	@override String get title => 'Başlık';
	@override String get description => 'Açıklama';
	@override String get markAsUnread => 'Okunmadı olarak işaretle';
	@override String get markAsUnreadDescription => 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.';
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
	@override String get share => 'Share';
	@override String get shareDescription => 'Share this bookmark with other registered users and anonymous users.';
	@override String get urlAlreadyBookmarked => 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.';
}

// Path: bookmarks.search
class _TranslationsBookmarksSearchTr implements TranslationsBookmarksSearchEn {
	_TranslationsBookmarksSearchTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get searchBookmarks => 'Yer işaretlerini ara';
	@override String get clearSearch => 'Aramayı temizle';
	@override String get inputSearchTerm => 'Bir arama terimi girin';
	@override String get cannotSearchError => 'Bir hata nedeniyle içerik aranamıyor';
	@override String get inputtedSearchTermNoResults => 'Girilen arama teriminin herhangi bir sonucu yok';
}

// Path: bookmarks.bookmarkOptions
class _TranslationsBookmarksBookmarkOptionsTr implements TranslationsBookmarksBookmarkOptionsEn {
	_TranslationsBookmarksBookmarkOptionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsBookmarksShareOptionsTr implements TranslationsBookmarksShareOptionsEn {
	_TranslationsBookmarksShareOptionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsTagsCreateTagTr implements TranslationsTagsCreateTagEn {
	_TranslationsTagsCreateTagTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get createTag => 'Etiket oluştur';
	@override String get name => 'Adı';
	@override String get creatingTag => 'Etiket oluşturuluyor...';
	@override String get errorCreatingTag => 'Etiket oluşturulurken bir hata oluştu.';
}

// Path: tags.filteredBookmarks
class _TranslationsTagsFilteredBookmarksTr implements TranslationsTagsFilteredBookmarksEn {
	_TranslationsTagsFilteredBookmarksTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get noBookmarksWithThisTag => 'Bu etikete sahip yer işareti yok';
	@override String get noArchivedBookmarks => 'Arşivlenmiş yer işareti yok';
	@override String get noSharedBookmarks => 'Paylaşılmış yer işareti yok';
}

// Path: settings.customization
class _TranslationsSettingsCustomizationTr implements TranslationsSettingsCustomizationEn {
	_TranslationsSettingsCustomizationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

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
class _TranslationsSettingsGeneralSettingsTr implements TranslationsSettingsGeneralSettingsEn {
	_TranslationsSettingsGeneralSettingsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get generalSettings => 'Genel Ayarlar';
	@override String get generalSettingsDescription => 'Uygulama için genel düzenlemeler.';
	@override String get bookmarks => 'Yer İmleri';
	@override String get showFavicon => 'Site simgesini göster';
	@override String get showFaviconDescription => 'Her yer işaretinde web sitesinin simgesini gösterin.';
	@override String get disconnectFromServer => 'Sunucu ile bağlantıyı kes';
	@override late final _TranslationsSettingsGeneralSettingsDisconnectModalTr disconnectModal = _TranslationsSettingsGeneralSettingsDisconnectModalTr._(_root);
	@override String get useInAppBrowser => 'Uygulama tarayıcısında kullanın';
	@override String get useInAppBrowserDescription => 'Yer işaretlerini sistem tarayıcısı yerine entegre tarayıcı ile açar. Tablet modunda dahili tarayıcı her zaman kullanılacaktır.';
	@override String get openLinksWith => 'Open links with...';
	@override String get internalBrowser => 'App internal browser';
	@override String get browserCustomTab => 'Browser custom tab';
	@override String get systemBrowser => 'System browser';
	@override String get tags => 'Tags';
	@override late final _TranslationsSettingsGeneralSettingsDefaultTagsTr defaultTags = _TranslationsSettingsGeneralSettingsDefaultTagsTr._(_root);
	@override String get others => 'Others';
	@override String get setMarkAsUnreadDefault => 'Set mark as unread by default';
	@override String get setMarkAsUnreadDefaultDescription => 'Set the mark as unread option by default when creating a new bookmark.';
	@override String get enableSlideOptions => 'Enable slide options';
	@override String get enableSlideOptionsDescription => 'Enable slide options on the bookmark list';
}

// Path: settings.generalSettings.disconnectModal
class _TranslationsSettingsGeneralSettingsDisconnectModalTr implements TranslationsSettingsGeneralSettingsDisconnectModalEn {
	_TranslationsSettingsGeneralSettingsDisconnectModalTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bağlantıyı kes';
	@override String get description => 'Sunucu bağlantısını kesmek istediğinizden emin misiniz?\nİlk kuruluma yönlendirileceksiniz.';
}

// Path: settings.generalSettings.defaultTags
class _TranslationsSettingsGeneralSettingsDefaultTagsTr implements TranslationsSettingsGeneralSettingsDefaultTagsEn {
	_TranslationsSettingsGeneralSettingsDefaultTagsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get defaultTags => 'Default tags';
	@override String get defaultTagsDescription => 'Define a list of tags that will be added by default when creating a bookmark';
	@override String get newTag => 'New tag';
	@override String get addTag => 'AddTag';
	@override String get removeThisTag => 'Remove this tag';
	@override String get noDefaultTags => 'There are no default tags';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'generic.confirm' => 'Onayla',
			'generic.cancel' => 'İptal',
			'generic.next' => 'Sonraki',
			'generic.save' => 'Kaydet',
			'generic.close' => 'Kapat',
			'generic.error' => 'Hata',
			'generic.optional' => 'İsteğe bağlı',
			'generic.authTokenNotValid' => 'Yetkilendirme jetonunuz artık geçerli değil. Lütfen yeniden kimlik doğrulaması yapın.',
			'generic.options' => 'Seçenekler',
			'onboarding.title' => 'Linkdy\'ye hoş geldiniz',
			'onboarding.subtitle' => 'Yer işaretlerinizi yönetmek için bir uygulama.',
			'onboarding.start' => 'Başlat',
			'onboarding.next' => 'Sonraki',
			'onboarding.previous' => 'Önceki',
			'onboarding.serverRequired' => 'Sunucu gerekli',
			'onboarding.serverRequiredDescription' => 'Linkdy bağımsız bir uygulama değildir, Linkding sunucusunun çalışmasını gerektirir.\nBu uygulamayı kullanmak için Linkding\'i ev sunucunuza, VPS\'ye veya başka bir bilgisayara dağıtmanız gerekir.',
			'onboarding.installationInstructions' => 'Resmi GitHub deposundaki kurulum talimatlarını kontrol edin.',
			'onboarding.serverRunningConfirmation' => 'Halihazırda çalışan bir Linkding sunucusu örneğim olduğunu onaylıyorum.',
			'onboarding.createConnection' => 'Bağlantı oluştur',
			'onboarding.createConnectionSubtitle' => 'Sunucunuzla bağlantı kurmak için gerekli tüm ayrıntıları girin.',
			'onboarding.ipAddressOrDomain' => 'IP adresi veya alan adı',
			'onboarding.port' => 'Bağlantı noktası',
			'onboarding.path' => 'Yol',
			'onboarding.invalidPath' => 'Geçersiz yol',
			'onboarding.token' => 'Jeton',
			'onboarding.required' => 'Gerekli',
			'onboarding.serverDetails' => 'Sunucu bilgileri',
			'onboarding.authentication' => 'Kimlik Doğrulama',
			'onboarding.testConnectionUrl' => 'Bağlantı adresini test edin',
			'onboarding.connectionServerEstablished' => 'Sunucu ile bağlantı kuruldu',
			'onboarding.testingConnection' => 'Bağlantı test ediliyor...',
			'onboarding.connectionServerFailed' => 'Sunucu ile bağlantı başarısız oldu',
			'onboarding.connect' => 'Bağlan',
			'onboarding.connecting' => 'Bağlanıyor...',
			'onboarding.cannotConnectToServer' => 'Sunucuya bağlanılamıyor.',
			'onboarding.invalidToken' => 'Geçersiz belirteç.',
			'onboarding.invalidIpDomain' => 'Geçersiz IP adresi veya etki alanı',
			'onboarding.invalidPort' => 'Geçersiz bağlantı noktası',
			'onboarding.tokenRequired' => 'Jeton gereklidir',
			'bookmarks.bookmarks' => 'Yer İşaretleri',
			'bookmarks.noBookmarksAdded' => 'Yer işareti eklenmedi',
			'bookmarks.cannotLoadBookmarks' => 'Yer işaretleri yüklenemiyor',
			'bookmarks.dates.todayAt' => ({required Object time}) => 'Bugün, ${time}',
			'bookmarks.dates.yesterdayAt' => ({required Object time}) => 'Dün, ${time}',
			'bookmarks.shared' => 'Ortak',
			'bookmarks.archived' => 'Arşivlendi',
			'bookmarks.showOnlyRead' => 'Sadece okunanı göster',
			'bookmarks.showOnlyUnread' => 'Sadece okunmamışları göster',
			'bookmarks.showAllBookmarks' => 'Tüm yer işaretlerini göster',
			'bookmarks.readStatus' => 'Okuma durumu',
			'bookmarks.all' => 'Tümü',
			'bookmarks.unread' => 'Okunmadı',
			'bookmarks.read' => 'Oku',
			'bookmarks.filterSort' => 'Filtrele ve sırala',
			'bookmarks.sorting' => 'Sıralama',
			'bookmarks.date' => 'Tarih',
			'bookmarks.title' => 'Başlık',
			'bookmarks.ascendant' => 'Yükselen',
			'bookmarks.descendant' => 'Alt öğe',
			'bookmarks.addBookmark.addBookmark' => 'Yeni yer işareti ekle',
			'bookmarks.addBookmark.editBookmark' => 'Yer işaretini düzenle',
			'bookmarks.addBookmark.bookmarkUrl' => 'Yer İşareti bağlantısı',
			'bookmarks.addBookmark.bookmarkDetails' => 'Yer işareti ayrıntıları',
			'bookmarks.addBookmark.validateUrl' => 'Bağlantı adresini doğrula',
			'bookmarks.addBookmark.urlValid' => 'Bağlantı adresi geçerli',
			'bookmarks.addBookmark.urlNotValid' => 'Bağlantı adresi geçerli değil',
			'bookmarks.addBookmark.cannotCheckUrl' => 'Bağlantı adresi kontrol edilemedi, ancak yine de kaydedebilirsiniz.',
			'bookmarks.addBookmark.invalidUrl' => 'Geçersiz bağlantı adresi',
			'bookmarks.addBookmark.url' => 'Bağlantı adresi',
			'bookmarks.addBookmark.checkingUrl' => 'Bağlantı adresi kontrol ediliyor...',
			'bookmarks.addBookmark.title' => 'Başlık',
			'bookmarks.addBookmark.description' => 'Açıklama',
			'bookmarks.addBookmark.markAsUnread' => 'Okunmadı olarak işaretle',
			'bookmarks.addBookmark.markAsUnreadDescription' => 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.',
			'bookmarks.addBookmark.notes' => 'Notlar',
			'bookmarks.addBookmark.addNotes' => 'Not ekle',
			'bookmarks.addBookmark.tags' => 'Etiketler',
			'bookmarks.addBookmark.noTagsAdded' => 'Etiket eklenmedi',
			'bookmarks.addBookmark.tagNoWhitespaces' => 'Etiket boşluk içeremez',
			'bookmarks.addBookmark.addTag' => 'Etiket ekle',
			'bookmarks.addBookmark.others' => 'Diğerleri',
			'bookmarks.addBookmark.savingBookmark' => 'Yer işareti kaydediliyor...',
			'bookmarks.addBookmark.bookmarkSavedSuccessfully' => 'Yer işareti başarıyla kaydedildi.',
			'bookmarks.addBookmark.errorSavingBookmark' => 'Yeni yer işareti kaydedilirken bir hata oluştu.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle' => 'Web sitesinin başlığını kullanmak için boş bırakın.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription' => 'Web sitesinin açıklamasını kullanmak için boş bırakın.',
			'bookmarks.addBookmark.share' => 'Share',
			'bookmarks.addBookmark.shareDescription' => 'Share this bookmark with other registered users and anonymous users.',
			'bookmarks.addBookmark.urlAlreadyBookmarked' => 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.',
			'bookmarks.search.searchBookmarks' => 'Yer işaretlerini ara',
			'bookmarks.search.clearSearch' => 'Aramayı temizle',
			'bookmarks.search.inputSearchTerm' => 'Bir arama terimi girin',
			'bookmarks.search.cannotSearchError' => 'Bir hata nedeniyle içerik aranamıyor',
			'bookmarks.search.inputtedSearchTermNoResults' => 'Girilen arama teriminin herhangi bir sonucu yok',
			'bookmarks.bookmarkOptions.edit' => 'Düzenle',
			'bookmarks.bookmarkOptions.delete' => 'Sil',
			'bookmarks.bookmarkOptions.read' => 'Oku',
			'bookmarks.bookmarkOptions.unread' => 'Okunmadı',
			'bookmarks.bookmarkOptions.markAsUnread' => 'Okunmadı olarak işaretle',
			'bookmarks.bookmarkOptions.markAsRead' => 'Okundu olarak işaretle',
			'bookmarks.bookmarkOptions.shareOptions' => 'Paylaşım seçenekleri',
			'bookmarks.bookmarkOptions.shared' => 'Ortak',
			'bookmarks.bookmarkOptions.archive' => 'Arşivle',
			'bookmarks.bookmarkOptions.unarchive' => 'Arşivden çıkar',
			'bookmarks.bookmarkOptions.deletingBookmark' => 'Yer işareti siliniyor...',
			'bookmarks.bookmarkOptions.bookmarkDeleted' => 'Yer işareti başarıyla silindi',
			'bookmarks.bookmarkOptions.bookmarkNotDeleted' => 'Yer işareti bir hata nedeniyle silinemedi.',
			'bookmarks.bookmarkOptions.deleteBookmark' => 'Yer işaretini sil',
			'bookmarks.bookmarkOptions.followingBookmarkDeleted' => 'Aşağıdaki yer işareti silinecek:',
			'bookmarks.bookmarkOptions.markingAsRead' => 'Okundu olarak işaretleniyor...',
			'bookmarks.bookmarkOptions.markingAsUnead' => 'Okunmadı olarak işaretleniyor...',
			'bookmarks.bookmarkOptions.markedAsReadSuccessfully' => 'Yer işareti başarıyla okundu olarak işaretlendi.',
			'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully' => 'Yer işareti başarıyla okunmadı olarak işaretlendi.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead' => 'Yer işareti okundu olarak işaretlenemedi.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread' => 'Yer işareti okunmadı olarak işaretlenemedi.',
			'bookmarks.bookmarkOptions.archivingBookmark' => 'Yer işareti arşivleniyor...',
			'bookmarks.bookmarkOptions.unarchivingBookmark' => 'Yer işareti arşivden çıkarılıyor...',
			'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully' => 'Yer işareti başarıyla arşivlendi.',
			'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully' => 'Yer işareti başarıyla arşivden kaldırıldı.',
			'bookmarks.bookmarkOptions.bookmarkNotArchived' => 'Yer işareti arşivlenemedi.',
			'bookmarks.bookmarkOptions.bookmarkNotUnrchived' => 'Yer işareti arşivden çıkarılamadı.',
			'bookmarks.bookmarkOptions.shareThirdPartyApp' => 'Üçüncü taraf bir uygulama kullanarak paylaşma',
			'bookmarks.bookmarkOptions.shareInternally' => 'Dahili olarak paylaşın',
			'bookmarks.bookmarkOptions.unshareInternally' => 'Dahili olarak paylaşımı kaldır',
			'bookmarks.shareOptions.shareOptions' => 'Paylaşım seçenekleri',
			'bookmarks.shareOptions.shareInternally' => 'Dahili olarak paylaşın',
			'bookmarks.shareOptions.unshareInternally' => 'Dahili olarak paylaşımı kaldır',
			'bookmarks.shareOptions.shareInternallyDescription' => 'Bu Linkding örneğinin geri kalan kullanıcılarıyla dahili olarak paylaşın',
			'bookmarks.shareOptions.unshareInternallyDescription' => 'Dahili olarak paylaşılan bu yer işaretinin paylaşımını kaldır',
			'bookmarks.shareOptions.shareExternally' => 'Yer işareti bağlantısını harici olarak paylaş',
			'bookmarks.shareOptions.shareExternallyDescription' => 'Üçüncü taraf bir uygulama kullanarak yer işareti bağlantısını harici olarak paylaşın',
			'bookmarks.shareOptions.sharingBookmark' => 'Yer işareti paylaşılıyor...',
			'bookmarks.shareOptions.unsharingBookmark' => 'Yer işareti paylaşımı kaldırılıyor...',
			'bookmarks.shareOptions.bookmarkSharedSuccessfully' => 'Yer işareti başarıyla paylaşıldı.',
			'bookmarks.shareOptions.bookmarkNotShared' => 'Yer işareti paylaşılamadı.',
			'bookmarks.shareOptions.bookmarkUnsharedSuccessfully' => 'Yer işareti başarıyla paylaşılmadı.',
			'bookmarks.shareOptions.bookmarkNotUnshared' => 'Yer işareti paylaşımı kaldırılamadı.',
			'tags.tags' => 'Etiketler',
			'tags.created' => ({required Object created}) => 'Oluşturuldu: ${created}',
			'tags.createTag.createTag' => 'Etiket oluştur',
			'tags.createTag.name' => 'Adı',
			'tags.createTag.creatingTag' => 'Etiket oluşturuluyor...',
			'tags.createTag.errorCreatingTag' => 'Etiket oluşturulurken bir hata oluştu.',
			'tags.filteredBookmarks.noBookmarksWithThisTag' => 'Bu etikete sahip yer işareti yok',
			'tags.filteredBookmarks.noArchivedBookmarks' => 'Arşivlenmiş yer işareti yok',
			'tags.filteredBookmarks.noSharedBookmarks' => 'Paylaşılmış yer işareti yok',
			'settings.settings' => 'Ayarlar',
			'settings.appSettings' => 'Uygulama ayarları',
			'settings.aboutApp' => 'Uygulama hakkında',
			'settings.appVersion' => 'Uygulama sürümü',
			'settings.createdBy' => 'Geliştirici',
			'settings.visitGooglePlay' => 'Google Play\'deki uygulama sayfasını ziyaret et',
			'settings.visitGitHubRepo' => 'GitHub\'daki uygulama deposunu ziyaret et',
			'settings.linkdingRepository' => 'Linkding deposu',
			'settings.linkdingRepositoryDescription' => 'GitHub\'daki Linkding deposuna bağlantı',
			'settings.moreInfoApp' => 'Uygulama hakkında daha fazla bilgi',
			'settings.moreInfoAppDescription' => 'Uygulamanın bilgi sayfasına bağlantı',
			'settings.moreApps' => 'Diğer uygulamalarım',
			'settings.moreAppsDescription' => 'Daha fazla uygulama, iletişim, bağış ve daha fazlası',
			'settings.customization.customization' => 'Özelleştirme',
			'settings.customization.customizationDescription' => 'Uygulama temasını ve renk paletini ayarlayın.',
			'settings.customization.theme' => 'Tema',
			'settings.customization.light' => 'Açık',
			'settings.customization.dark' => 'Koyu',
			'settings.customization.systemDefined' => 'Sistem tanımlı',
			'settings.customization.color' => 'Renk',
			'settings.customization.useDynamicTheme' => 'Dinamik tema kullan',
			'settings.generalSettings.generalSettings' => 'Genel Ayarlar',
			'settings.generalSettings.generalSettingsDescription' => 'Uygulama için genel düzenlemeler.',
			'settings.generalSettings.bookmarks' => 'Yer İmleri',
			'settings.generalSettings.showFavicon' => 'Site simgesini göster',
			'settings.generalSettings.showFaviconDescription' => 'Her yer işaretinde web sitesinin simgesini gösterin.',
			'settings.generalSettings.disconnectFromServer' => 'Sunucu ile bağlantıyı kes',
			'settings.generalSettings.disconnectModal.title' => 'Bağlantıyı kes',
			'settings.generalSettings.disconnectModal.description' => 'Sunucu bağlantısını kesmek istediğinizden emin misiniz?\nİlk kuruluma yönlendirileceksiniz.',
			'settings.generalSettings.useInAppBrowser' => 'Uygulama tarayıcısında kullanın',
			'settings.generalSettings.useInAppBrowserDescription' => 'Yer işaretlerini sistem tarayıcısı yerine entegre tarayıcı ile açar. Tablet modunda dahili tarayıcı her zaman kullanılacaktır.',
			'settings.generalSettings.openLinksWith' => 'Open links with...',
			'settings.generalSettings.internalBrowser' => 'App internal browser',
			'settings.generalSettings.browserCustomTab' => 'Browser custom tab',
			'settings.generalSettings.systemBrowser' => 'System browser',
			'settings.generalSettings.tags' => 'Tags',
			'settings.generalSettings.defaultTags.defaultTags' => 'Default tags',
			'settings.generalSettings.defaultTags.defaultTagsDescription' => 'Define a list of tags that will be added by default when creating a bookmark',
			'settings.generalSettings.defaultTags.newTag' => 'New tag',
			'settings.generalSettings.defaultTags.addTag' => 'AddTag',
			'settings.generalSettings.defaultTags.removeThisTag' => 'Remove this tag',
			'settings.generalSettings.defaultTags.noDefaultTags' => 'There are no default tags',
			'settings.generalSettings.others' => 'Others',
			'settings.generalSettings.setMarkAsUnreadDefault' => 'Set mark as unread by default',
			'settings.generalSettings.setMarkAsUnreadDefaultDescription' => 'Set the mark as unread option by default when creating a new bookmark.',
			'settings.generalSettings.enableSlideOptions' => 'Enable slide options',
			'settings.generalSettings.enableSlideOptionsDescription' => 'Enable slide options on the bookmark list',
			'webview.goBack' => 'Geri dön',
			'webview.goForward' => 'İleri git',
			'webview.reload' => 'Yenile',
			'webview.openInSystemBrowser' => 'Sistem tarayıcısında aç',
			'webview.copyLinkClipboard' => 'Bağlantıyı panoya kopyala',
			'webview.linkCopiedClipboard' => 'Bağlantı panoya kopyalandı.',
			'webview.share' => 'Paylaş',
			'webview.invalidBookmarkData' => 'The bookmark has invalid data or it\'s corrupted.',
			'colors.red' => 'Kırmızı',
			'colors.green' => 'Yeşil',
			'colors.blue' => 'Mavi',
			'colors.yellow' => 'Sarı',
			'colors.orange' => 'Turuncu',
			'colors.brown' => 'Kahverengi',
			'colors.cyan' => 'Camgöbeği',
			'colors.purple' => 'Mor',
			'colors.pink' => 'Pembe',
			'colors.deepOrange' => 'Koyu turuncu',
			'colors.indigo' => 'Çivit',
			_ => null,
		};
	}
}
