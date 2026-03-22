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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsGenericEs generic = _TranslationsGenericEs._(_root);
	@override late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
	@override late final _TranslationsBookmarksEs bookmarks = _TranslationsBookmarksEs._(_root);
	@override late final _TranslationsTagsEs tags = _TranslationsTagsEs._(_root);
	@override late final _TranslationsSettingsEs settings = _TranslationsSettingsEs._(_root);
	@override late final _TranslationsWebviewEs webview = _TranslationsWebviewEs._(_root);
	@override late final _TranslationsColorsEs colors = _TranslationsColorsEs._(_root);
}

// Path: generic
class _TranslationsGenericEs implements TranslationsGenericEn {
	_TranslationsGenericEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsBookmarksEs implements TranslationsBookmarksEn {
	_TranslationsBookmarksEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bookmarks => 'Marcadores';
	@override String get noBookmarksAdded => 'No hay marcadores añadidos';
	@override String get cannotLoadBookmarks => 'No se pueden cargar los marcadores';
	@override late final _TranslationsBookmarksDatesEs dates = _TranslationsBookmarksDatesEs._(_root);
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
	@override late final _TranslationsBookmarksAddBookmarkEs addBookmark = _TranslationsBookmarksAddBookmarkEs._(_root);
	@override late final _TranslationsBookmarksSearchEs search = _TranslationsBookmarksSearchEs._(_root);
	@override late final _TranslationsBookmarksBookmarkOptionsEs bookmarkOptions = _TranslationsBookmarksBookmarkOptionsEs._(_root);
	@override late final _TranslationsBookmarksShareOptionsEs shareOptions = _TranslationsBookmarksShareOptionsEs._(_root);
}

// Path: tags
class _TranslationsTagsEs implements TranslationsTagsEn {
	_TranslationsTagsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get tags => 'Etiquetas';
	@override String created({required Object created}) => 'Creado: ${created}';
	@override late final _TranslationsTagsCreateTagEs createTag = _TranslationsTagsCreateTagEs._(_root);
	@override late final _TranslationsTagsFilteredBookmarksEs filteredBookmarks = _TranslationsTagsFilteredBookmarksEs._(_root);
}

// Path: settings
class _TranslationsSettingsEs implements TranslationsSettingsEn {
	_TranslationsSettingsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
	@override String get moreInfoApp => 'Más información sobre la aplicación';
	@override String get moreInfoAppDescription => 'Enlace a la página web de información de la aplicación';
	@override String get moreApps => 'Mis otras aplicaciones';
	@override String get moreAppsDescription => 'Más aplicaciones, contacto, donaciones y más';
	@override late final _TranslationsSettingsCustomizationEs customization = _TranslationsSettingsCustomizationEs._(_root);
	@override late final _TranslationsSettingsGeneralSettingsEs generalSettings = _TranslationsSettingsGeneralSettingsEs._(_root);
}

// Path: webview
class _TranslationsWebviewEs implements TranslationsWebviewEn {
	_TranslationsWebviewEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get goBack => 'Ir atrás';
	@override String get goForward => 'Ir adelante';
	@override String get reload => 'Recargar';
	@override String get openInSystemBrowser => 'Abrir en el navegador del sistema';
	@override String get copyLinkClipboard => 'Copiar enlace al portapapeles';
	@override String get linkCopiedClipboard => 'Enlace copiado al portapapeles.';
	@override String get share => 'Compartir';
	@override String get invalidBookmarkData => 'El marcador tiene datos inválidos o está corrupto.';
}

// Path: colors
class _TranslationsColorsEs implements TranslationsColorsEn {
	_TranslationsColorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsBookmarksDatesEs implements TranslationsBookmarksDatesEn {
	_TranslationsBookmarksDatesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String todayAt({required Object time}) => 'Hoy, ${time}';
	@override String yesterdayAt({required Object time}) => 'Ayer, ${time}';
}

// Path: bookmarks.addBookmark
class _TranslationsBookmarksAddBookmarkEs implements TranslationsBookmarksAddBookmarkEn {
	_TranslationsBookmarksAddBookmarkEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addBookmark => 'Añadir nuevo marcador';
	@override String get editBookmark => 'Editar marcador';
	@override String get url => 'URL';
	@override String get bookmarkUrl => 'URL del marcador';
	@override String get bookmarkDetails => 'Detalles del marcador';
	@override String get validateUrl => 'Validar URL';
	@override String get urlValid => 'La URL es válida';
	@override String get urlNotValid => 'La URL no es válida';
	@override String get cannotCheckUrl => 'No se pudo comprobar la URL, pero puedes guardarla de todas formas.';
	@override String get invalidUrl => 'URL no válida';
	@override String get checkingUrl => 'Comprobando URL...';
	@override String get title => 'Title';
	@override String get description => 'Description';
	@override String get markAsUnread => 'Marcar como no leído';
	@override String get markAsUnreadDescription => 'Los marcadores no leídos pueden filtrarse y marcarse como leídos después de haberlos consultado.';
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
	@override String get share => 'Compartir';
	@override String get shareDescription => 'Comparte este marcador con otros usuarios registrados y usuarios anónimos.';
	@override String get urlAlreadyBookmarked => 'Esta URL ya está marcada como favorita. El formulario se ha rellenado previamente con el marcador existente, y al guardar el formulario se actualizará el marcador existente.';
}

// Path: bookmarks.search
class _TranslationsBookmarksSearchEs implements TranslationsBookmarksSearchEn {
	_TranslationsBookmarksSearchEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get searchBookmarks => 'Buscar marcadores';
	@override String get clearSearch => 'Limpiar búsqueda';
	@override String get inputSearchTerm => 'Introduce un término de búsqueda';
	@override String get cannotSearchError => 'No se puede buscar el contenido por un error';
	@override String get inputtedSearchTermNoResults => 'El término de búsqueda introducido no tiene resultados';
}

// Path: bookmarks.bookmarkOptions
class _TranslationsBookmarksBookmarkOptionsEs implements TranslationsBookmarksBookmarkOptionsEn {
	_TranslationsBookmarksBookmarkOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsBookmarksShareOptionsEs implements TranslationsBookmarksShareOptionsEn {
	_TranslationsBookmarksShareOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsTagsCreateTagEs implements TranslationsTagsCreateTagEn {
	_TranslationsTagsCreateTagEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get createTag => 'Crear etiqueta';
	@override String get name => 'Nombre';
	@override String get creatingTag => 'Creando etiqueta...';
	@override String get errorCreatingTag => 'Ocurrió un error al crear la etiqueta.';
}

// Path: tags.filteredBookmarks
class _TranslationsTagsFilteredBookmarksEs implements TranslationsTagsFilteredBookmarksEn {
	_TranslationsTagsFilteredBookmarksEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get noBookmarksWithThisTag => 'No hay marcadores con esta etiqueta';
	@override String get noArchivedBookmarks => 'No hay marcadores archivados';
	@override String get noSharedBookmarks => 'No hay marcadores compartidos';
}

// Path: settings.customization
class _TranslationsSettingsCustomizationEs implements TranslationsSettingsCustomizationEn {
	_TranslationsSettingsCustomizationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

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
class _TranslationsSettingsGeneralSettingsEs implements TranslationsSettingsGeneralSettingsEn {
	_TranslationsSettingsGeneralSettingsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get generalSettings => 'Ajustes generales';
	@override String get generalSettingsDescription => 'Ajustes generales para la aplicación.';
	@override String get bookmarks => 'Marcadores';
	@override String get showFavicon => 'Mostrar favicon';
	@override String get showFaviconDescription => 'Mostrar el favicon del sitio web en cada marcador.';
	@override String get disconnectFromServer => 'Desconectar del servidor';
	@override late final _TranslationsSettingsGeneralSettingsDisconnectModalEs disconnectModal = _TranslationsSettingsGeneralSettingsDisconnectModalEs._(_root);
	@override String get useInAppBrowser => 'Usar navegador de la aplicación';
	@override String get useInAppBrowserDescription => 'Abre los marcadores con el navegador integrado en vez de con el navegador del sietema. En modo tablet siempre se usará el navegador integrado.';
	@override String get openLinksWith => 'Abrir enlaces con...';
	@override String get internalBrowser => 'Navegador interno de la app';
	@override String get browserCustomTab => 'Pestaña personalizada del navegador';
	@override String get systemBrowser => 'Navegador del sistema';
	@override String get tags => 'Etiquetas';
	@override late final _TranslationsSettingsGeneralSettingsDefaultTagsEs defaultTags = _TranslationsSettingsGeneralSettingsDefaultTagsEs._(_root);
	@override String get others => 'Otros';
	@override String get setMarkAsUnreadDefault => 'Marcar como no leído por defecto';
	@override String get setMarkAsUnreadDefaultDescription => 'Habilitar por defecto la opción de marcar como leído al crear un marcador.';
	@override String get enableSlideOptions => 'Habilitar opciones al deslizar';
	@override String get enableSlideOptionsDescription => 'Habilitar opciones al deslizar en la lista de marcadores';
}

// Path: settings.generalSettings.disconnectModal
class _TranslationsSettingsGeneralSettingsDisconnectModalEs implements TranslationsSettingsGeneralSettingsDisconnectModalEn {
	_TranslationsSettingsGeneralSettingsDisconnectModalEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desconectar';
	@override String get description => '¿Estás seguro que deseas desconectarte del servidor?\nSerás redirigido a la configuración inicial.';
}

// Path: settings.generalSettings.defaultTags
class _TranslationsSettingsGeneralSettingsDefaultTagsEs implements TranslationsSettingsGeneralSettingsDefaultTagsEn {
	_TranslationsSettingsGeneralSettingsDefaultTagsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get defaultTags => 'Etiquetas por defecto';
	@override String get defaultTagsDescription => 'Define una lista de etiquetas que se añadirán por defecto al crear un marcador';
	@override String get newTag => 'Nueva etiqueta';
	@override String get addTag => 'Añadir etiqueta';
	@override String get removeThisTag => 'Eliminar esta etiqueta';
	@override String get noDefaultTags => 'No hay etiquetas por defecto';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'generic.confirm' => 'Confirmar',
			'generic.cancel' => 'Cancelar',
			'generic.next' => 'Siguiente',
			'generic.save' => 'Guardar',
			'generic.close' => 'Cerrar',
			'generic.error' => 'Error',
			'generic.optional' => 'Opcional',
			'generic.authTokenNotValid' => 'Su token de autorización ya no es válido. Por favor, vuelva a autenticarse.',
			'generic.options' => 'Opciones',
			'onboarding.title' => 'Bienvenido a Linkdy',
			'onboarding.subtitle' => 'Una aplicación para gestionar tus enlaces favoritos.',
			'onboarding.start' => 'Comenzar',
			'onboarding.next' => 'Siguiente',
			'onboarding.previous' => 'Anterior',
			'onboarding.serverRequired' => 'Servidor requerido',
			'onboarding.serverRequiredDescription' => 'Linkdy no es una aplicación independiente, requiere el servidor Linkding para funcionar.\nPara utilizar esta aplicación, debe instalar Linkding en su servidor doméstico, VPS o cualquier otro ordenador.',
			'onboarding.installationInstructions' => 'Mira las instrucciones de instalación en el repositorio oficial en GitHub.',
			'onboarding.serverRunningConfirmation' => 'Confirmo que tengo una instancia del servidor Linkding ya en funcionamiento.',
			'onboarding.createConnection' => 'Crear una conexión',
			'onboarding.createConnectionSubtitle' => 'Introduce todos los detalles requeridos para crear una conexión con el servidor',
			'onboarding.ipAddressOrDomain' => 'Dirección IP o dominio',
			'onboarding.port' => 'Puerto',
			'onboarding.path' => 'Ruta',
			'onboarding.invalidPath' => 'Ruta no válida',
			'onboarding.token' => 'Token',
			'onboarding.required' => 'Requerido',
			'onboarding.serverDetails' => 'Detalles del servidor',
			'onboarding.authentication' => 'Autenticación',
			'onboarding.testConnectionUrl' => 'Probar URL de conexión',
			'onboarding.testingConnection' => 'Probando conexión...',
			'onboarding.connectionServerEstablished' => 'Conexión con servidor establecida',
			'onboarding.connectionServerFailed' => 'Conexión con servidor fallida',
			'onboarding.connect' => 'Conectar',
			'onboarding.connecting' => 'Conectando...',
			'onboarding.cannotConnectToServer' => 'No se puede conectar con el servidor.',
			'onboarding.invalidToken' => 'Token no válido.',
			'onboarding.invalidIpDomain' => 'Dirección IP o dominio no válido',
			'onboarding.invalidPort' => 'Puerto no válido',
			'onboarding.tokenRequired' => 'Token requerido',
			'bookmarks.bookmarks' => 'Marcadores',
			'bookmarks.noBookmarksAdded' => 'No hay marcadores añadidos',
			'bookmarks.cannotLoadBookmarks' => 'No se pueden cargar los marcadores',
			'bookmarks.dates.todayAt' => ({required Object time}) => 'Hoy, ${time}',
			'bookmarks.dates.yesterdayAt' => ({required Object time}) => 'Ayer, ${time}',
			'bookmarks.shared' => 'Compartidos',
			'bookmarks.archived' => 'Archivados',
			'bookmarks.showOnlyRead' => 'Mostrar solo leídos',
			'bookmarks.showOnlyUnread' => 'Mostrar solo no leídos',
			'bookmarks.showAllBookmarks' => 'Mostrar todos los marcadores',
			'bookmarks.readStatus' => 'Estado de lectura',
			'bookmarks.all' => 'Todos',
			'bookmarks.unread' => 'No leídos',
			'bookmarks.read' => 'Leídos',
			'bookmarks.filterSort' => 'Filtrar y ordenar',
			'bookmarks.sorting' => 'Ordenación',
			'bookmarks.date' => 'Fecha',
			'bookmarks.title' => 'Título',
			'bookmarks.ascendant' => 'Ascendiente',
			'bookmarks.descendant' => 'Descendiente',
			'bookmarks.addBookmark.addBookmark' => 'Añadir nuevo marcador',
			'bookmarks.addBookmark.editBookmark' => 'Editar marcador',
			'bookmarks.addBookmark.url' => 'URL',
			'bookmarks.addBookmark.bookmarkUrl' => 'URL del marcador',
			'bookmarks.addBookmark.bookmarkDetails' => 'Detalles del marcador',
			'bookmarks.addBookmark.validateUrl' => 'Validar URL',
			'bookmarks.addBookmark.urlValid' => 'La URL es válida',
			'bookmarks.addBookmark.urlNotValid' => 'La URL no es válida',
			'bookmarks.addBookmark.cannotCheckUrl' => 'No se pudo comprobar la URL, pero puedes guardarla de todas formas.',
			'bookmarks.addBookmark.invalidUrl' => 'URL no válida',
			'bookmarks.addBookmark.checkingUrl' => 'Comprobando URL...',
			'bookmarks.addBookmark.title' => 'Title',
			'bookmarks.addBookmark.description' => 'Description',
			'bookmarks.addBookmark.markAsUnread' => 'Marcar como no leído',
			'bookmarks.addBookmark.markAsUnreadDescription' => 'Los marcadores no leídos pueden filtrarse y marcarse como leídos después de haberlos consultado.',
			'bookmarks.addBookmark.notes' => 'Notas',
			'bookmarks.addBookmark.addNotes' => 'Añadir notas',
			'bookmarks.addBookmark.tags' => 'Etiquetas',
			'bookmarks.addBookmark.noTagsAdded' => 'No hay etiquetas añadidas',
			'bookmarks.addBookmark.tagNoWhitespaces' => 'La etiqueta no puede contener espacios',
			'bookmarks.addBookmark.addTag' => 'Añadir etiqueta',
			'bookmarks.addBookmark.others' => 'Otros',
			'bookmarks.addBookmark.savingBookmark' => 'Guardando marcador...',
			'bookmarks.addBookmark.bookmarkSavedSuccessfully' => 'Marcador guardado correctamente',
			'bookmarks.addBookmark.errorSavingBookmark' => 'Ocurrió un error al guardar el nuevo marcador.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteTitle' => 'Dejar vacío para usar el título del sitio web.',
			'bookmarks.addBookmark.leaveEmptyUseWebsiteDescription' => 'Dejar vacío para usar la descripción del sitio web.',
			'bookmarks.addBookmark.share' => 'Compartir',
			'bookmarks.addBookmark.shareDescription' => 'Comparte este marcador con otros usuarios registrados y usuarios anónimos.',
			'bookmarks.addBookmark.urlAlreadyBookmarked' => 'Esta URL ya está marcada como favorita. El formulario se ha rellenado previamente con el marcador existente, y al guardar el formulario se actualizará el marcador existente.',
			'bookmarks.search.searchBookmarks' => 'Buscar marcadores',
			'bookmarks.search.clearSearch' => 'Limpiar búsqueda',
			'bookmarks.search.inputSearchTerm' => 'Introduce un término de búsqueda',
			'bookmarks.search.cannotSearchError' => 'No se puede buscar el contenido por un error',
			'bookmarks.search.inputtedSearchTermNoResults' => 'El término de búsqueda introducido no tiene resultados',
			'bookmarks.bookmarkOptions.edit' => 'Editar',
			'bookmarks.bookmarkOptions.delete' => 'Eliminar',
			'bookmarks.bookmarkOptions.read' => 'Leído',
			'bookmarks.bookmarkOptions.unread' => 'No leído',
			'bookmarks.bookmarkOptions.markAsUnread' => 'Marcar como no leído',
			'bookmarks.bookmarkOptions.markAsRead' => 'Marcar como leído',
			'bookmarks.bookmarkOptions.shareOptions' => 'Opciones de compartir',
			'bookmarks.bookmarkOptions.shared' => 'Compartido',
			'bookmarks.bookmarkOptions.archive' => 'Archivar',
			'bookmarks.bookmarkOptions.unarchive' => 'Desarchivar',
			'bookmarks.bookmarkOptions.deletingBookmark' => 'Eliminando marcador...',
			'bookmarks.bookmarkOptions.bookmarkDeleted' => 'Marcador eliminado correctamente',
			'bookmarks.bookmarkOptions.bookmarkNotDeleted' => 'El marcador no se ha podido eliminar debido a un error.',
			'bookmarks.bookmarkOptions.deleteBookmark' => 'Eliminar marcador',
			'bookmarks.bookmarkOptions.followingBookmarkDeleted' => 'El siguiente marcador será eliminado:',
			'bookmarks.bookmarkOptions.markingAsRead' => 'Marcando como leído...',
			'bookmarks.bookmarkOptions.markingAsUnead' => 'Marcando como no leído...',
			'bookmarks.bookmarkOptions.markedAsReadSuccessfully' => 'Marcador marcado como leído correctamente.',
			'bookmarks.bookmarkOptions.markedAsUnreadSuccessfully' => 'Marcador marcado como no leído correctamente.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead' => 'El marcador no se ha podido marcar como leído.',
			'bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread' => 'El marcador no se ha podido marcar como no leído.',
			'bookmarks.bookmarkOptions.archivingBookmark' => 'Archivando marcador...',
			'bookmarks.bookmarkOptions.unarchivingBookmark' => 'Desarchivando marcador...',
			'bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully' => 'Marcador archivado correctamente.',
			'bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully' => 'Marcador desarchivado correctamente.',
			'bookmarks.bookmarkOptions.bookmarkNotArchived' => 'El marcador no pudo ser archivado.',
			'bookmarks.bookmarkOptions.bookmarkNotUnrchived' => 'El marcador no pudo ser desarchivado.',
			'bookmarks.bookmarkOptions.shareThirdPartyApp' => 'Compartir usando una app de terceros',
			'bookmarks.bookmarkOptions.shareInternally' => 'Compartir internamente',
			'bookmarks.bookmarkOptions.unshareInternally' => 'Descompartir internamente',
			'bookmarks.shareOptions.shareOptions' => 'Opciones de compartir',
			'bookmarks.shareOptions.shareInternally' => 'Compartir internamente',
			'bookmarks.shareOptions.unshareInternally' => 'Descompartir internamente',
			'bookmarks.shareOptions.shareInternallyDescription' => 'Compartir internamente con el resto de usuarios de la instancia de Linkding',
			'bookmarks.shareOptions.unshareInternallyDescription' => 'Descompartir el marcador compartido internamente',
			'bookmarks.shareOptions.shareExternally' => 'Compartir URL del marcador externamente',
			'bookmarks.shareOptions.shareExternallyDescription' => 'Compartir la URL del marcador externamente usando una aplicación de terceros',
			'bookmarks.shareOptions.sharingBookmark' => 'Compartiendo marcador...',
			'bookmarks.shareOptions.unsharingBookmark' => 'Descompartiendo marcador...',
			'bookmarks.shareOptions.bookmarkSharedSuccessfully' => 'Marcador compartido correctamente.',
			'bookmarks.shareOptions.bookmarkNotShared' => 'El marcador no pudo ser compartido.',
			'bookmarks.shareOptions.bookmarkUnsharedSuccessfully' => 'Marcador descompartido correctamente.',
			'bookmarks.shareOptions.bookmarkNotUnshared' => 'El marcador no pudo ser descompartido.',
			'tags.tags' => 'Etiquetas',
			'tags.created' => ({required Object created}) => 'Creado: ${created}',
			'tags.createTag.createTag' => 'Crear etiqueta',
			'tags.createTag.name' => 'Nombre',
			'tags.createTag.creatingTag' => 'Creando etiqueta...',
			'tags.createTag.errorCreatingTag' => 'Ocurrió un error al crear la etiqueta.',
			'tags.filteredBookmarks.noBookmarksWithThisTag' => 'No hay marcadores con esta etiqueta',
			'tags.filteredBookmarks.noArchivedBookmarks' => 'No hay marcadores archivados',
			'tags.filteredBookmarks.noSharedBookmarks' => 'No hay marcadores compartidos',
			'settings.settings' => 'Ajustes',
			'settings.appSettings' => 'Ajustes de la aplicación',
			'settings.aboutApp' => 'Sobre la aplicación',
			'settings.appVersion' => 'Versión de la aplicación',
			'settings.createdBy' => 'Creado por',
			'settings.visitGooglePlay' => 'Visita la página de la aplicación en Google Play',
			'settings.visitGitHubRepo' => 'Visita el repositorio de la aplicación en GitHub',
			'settings.linkdingRepository' => 'Repositorio de Linkding',
			'settings.linkdingRepositoryDescription' => 'Enlace al repositorio de Linkding en GitHub',
			'settings.moreInfoApp' => 'Más información sobre la aplicación',
			'settings.moreInfoAppDescription' => 'Enlace a la página web de información de la aplicación',
			'settings.moreApps' => 'Mis otras aplicaciones',
			'settings.moreAppsDescription' => 'Más aplicaciones, contacto, donaciones y más',
			'settings.customization.customization' => 'Personalización',
			'settings.customization.customizationDescription' => 'Configura el tema y la paleta de colores.',
			'settings.customization.theme' => 'Tema',
			'settings.customization.light' => 'Claro',
			'settings.customization.dark' => 'Oscuro',
			'settings.customization.systemDefined' => 'Definido por el sistema',
			'settings.customization.color' => 'Color',
			'settings.customization.useDynamicTheme' => 'Usar tema dinámico',
			'settings.generalSettings.generalSettings' => 'Ajustes generales',
			'settings.generalSettings.generalSettingsDescription' => 'Ajustes generales para la aplicación.',
			'settings.generalSettings.bookmarks' => 'Marcadores',
			'settings.generalSettings.showFavicon' => 'Mostrar favicon',
			'settings.generalSettings.showFaviconDescription' => 'Mostrar el favicon del sitio web en cada marcador.',
			'settings.generalSettings.disconnectFromServer' => 'Desconectar del servidor',
			'settings.generalSettings.disconnectModal.title' => 'Desconectar',
			'settings.generalSettings.disconnectModal.description' => '¿Estás seguro que deseas desconectarte del servidor?\nSerás redirigido a la configuración inicial.',
			'settings.generalSettings.useInAppBrowser' => 'Usar navegador de la aplicación',
			'settings.generalSettings.useInAppBrowserDescription' => 'Abre los marcadores con el navegador integrado en vez de con el navegador del sietema. En modo tablet siempre se usará el navegador integrado.',
			'settings.generalSettings.openLinksWith' => 'Abrir enlaces con...',
			'settings.generalSettings.internalBrowser' => 'Navegador interno de la app',
			'settings.generalSettings.browserCustomTab' => 'Pestaña personalizada del navegador',
			'settings.generalSettings.systemBrowser' => 'Navegador del sistema',
			'settings.generalSettings.tags' => 'Etiquetas',
			'settings.generalSettings.defaultTags.defaultTags' => 'Etiquetas por defecto',
			'settings.generalSettings.defaultTags.defaultTagsDescription' => 'Define una lista de etiquetas que se añadirán por defecto al crear un marcador',
			'settings.generalSettings.defaultTags.newTag' => 'Nueva etiqueta',
			'settings.generalSettings.defaultTags.addTag' => 'Añadir etiqueta',
			'settings.generalSettings.defaultTags.removeThisTag' => 'Eliminar esta etiqueta',
			'settings.generalSettings.defaultTags.noDefaultTags' => 'No hay etiquetas por defecto',
			'settings.generalSettings.others' => 'Otros',
			'settings.generalSettings.setMarkAsUnreadDefault' => 'Marcar como no leído por defecto',
			'settings.generalSettings.setMarkAsUnreadDefaultDescription' => 'Habilitar por defecto la opción de marcar como leído al crear un marcador.',
			'settings.generalSettings.enableSlideOptions' => 'Habilitar opciones al deslizar',
			'settings.generalSettings.enableSlideOptionsDescription' => 'Habilitar opciones al deslizar en la lista de marcadores',
			'webview.goBack' => 'Ir atrás',
			'webview.goForward' => 'Ir adelante',
			'webview.reload' => 'Recargar',
			'webview.openInSystemBrowser' => 'Abrir en el navegador del sistema',
			'webview.copyLinkClipboard' => 'Copiar enlace al portapapeles',
			'webview.linkCopiedClipboard' => 'Enlace copiado al portapapeles.',
			'webview.share' => 'Compartir',
			'webview.invalidBookmarkData' => 'El marcador tiene datos inválidos o está corrupto.',
			'colors.red' => 'Rojo',
			'colors.green' => 'Verde',
			'colors.blue' => 'Azul',
			'colors.yellow' => 'Amarillo',
			'colors.orange' => 'Naranja',
			'colors.brown' => 'Marron',
			'colors.cyan' => 'Cian',
			'colors.purple' => 'Morado',
			'colors.pink' => 'Rosa',
			'colors.deepOrange' => 'Naranja oscuro',
			'colors.indigo' => 'Índigo',
			_ => null,
		};
	}
}
