///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsTr implements Translations {
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTr {
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
			case 'bookmarks.addBookmark.cannotCheckUrl': return 'Bağlantı adresi kontrol edilemedi, ancak yine de kaydedebilirsiniz.';
			case 'bookmarks.addBookmark.invalidUrl': return 'Geçersiz bağlantı adresi';
			case 'bookmarks.addBookmark.url': return 'Bağlantı adresi';
			case 'bookmarks.addBookmark.checkingUrl': return 'Bağlantı adresi kontrol ediliyor...';
			case 'bookmarks.addBookmark.title': return 'Başlık';
			case 'bookmarks.addBookmark.description': return 'Açıklama';
			case 'bookmarks.addBookmark.markAsUnread': return 'Okunmadı olarak işaretle';
			case 'bookmarks.addBookmark.markAsUnreadDescription': return 'Unread bookmarks can be filtered for, and marked as read after you had a chance to look at them.';
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
			case 'bookmarks.addBookmark.share': return 'Share';
			case 'bookmarks.addBookmark.shareDescription': return 'Share this bookmark with other registered users and anonymous users.';
			case 'bookmarks.addBookmark.urlAlreadyBookmarked': return 'This URL is already bookmarked. The form has been pre-filled with the existing bookmark, and saving the form will update the existing bookmark.';
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
			case 'settings.moreInfoApp': return 'Uygulama hakkında daha fazla bilgi';
			case 'settings.moreInfoAppDescription': return 'Uygulamanın bilgi sayfasına bağlantı';
			case 'settings.moreApps': return 'Diğer uygulamalarım';
			case 'settings.moreAppsDescription': return 'Daha fazla uygulama, iletişim, bağış ve daha fazlası';
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
			case 'settings.generalSettings.openLinksWith': return 'Open links with...';
			case 'settings.generalSettings.internalBrowser': return 'App internal browser';
			case 'settings.generalSettings.browserCustomTab': return 'Browser custom tab';
			case 'settings.generalSettings.systemBrowser': return 'System browser';
			case 'settings.generalSettings.tags': return 'Tags';
			case 'settings.generalSettings.defaultTags.defaultTags': return 'Default tags';
			case 'settings.generalSettings.defaultTags.defaultTagsDescription': return 'Define a list of tags that will be added by default when creating a bookmark';
			case 'settings.generalSettings.defaultTags.newTag': return 'New tag';
			case 'settings.generalSettings.defaultTags.addTag': return 'AddTag';
			case 'settings.generalSettings.defaultTags.removeThisTag': return 'Remove this tag';
			case 'settings.generalSettings.defaultTags.noDefaultTags': return 'There are no default tags';
			case 'settings.generalSettings.others': return 'Others';
			case 'settings.generalSettings.setMarkAsUnreadDefault': return 'Set mark as unread by default';
			case 'settings.generalSettings.setMarkAsUnreadDefaultDescription': return 'Set the mark as unread option by default when creating a new bookmark.';
			case 'webview.goBack': return 'Geri dön';
			case 'webview.goForward': return 'İleri git';
			case 'webview.reload': return 'Yenile';
			case 'webview.openInSystemBrowser': return 'Sistem tarayıcısında aç';
			case 'webview.copyLinkClipboard': return 'Bağlantıyı panoya kopyala';
			case 'webview.linkCopiedClipboard': return 'Bağlantı panoya kopyalandı.';
			case 'webview.share': return 'Paylaş';
			case 'webview.invalidBookmarkData': return 'The bookmark has invalid data or it\'s corrupted.';
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

