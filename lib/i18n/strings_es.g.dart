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
class TranslationsEs implements Translations {
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
	@override String get contactDeveloper => 'Contacta con el desarrollador';
	@override String get contactDeveloperDescription => 'Si tienes un problema, quieres sugerir una funcionalidad, o hacer una pregunta';
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
	@override String get cannotCheckUrl => 'No se pudo comprobar la URL';
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
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
			case 'bookmarks.addBookmark.markAsUnreadDescription': return 'Los marcadores no leídos pueden filtrarse y marcarse como leídos después de haberlos consultado.';
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
			case 'bookmarks.addBookmark.share': return 'Compartir';
			case 'bookmarks.addBookmark.shareDescription': return 'Comparte este marcador con otros usuarios registrados y usuarios anónimos.';
			case 'bookmarks.addBookmark.urlAlreadyBookmarked': return 'Esta URL ya está marcada como favorita. El formulario se ha rellenado previamente con el marcador existente, y al guardar el formulario se actualizará el marcador existente.';
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
			case 'settings.contactDeveloper': return 'Contacta con el desarrollador';
			case 'settings.contactDeveloperDescription': return 'Si tienes un problema, quieres sugerir una funcionalidad, o hacer una pregunta';
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
			case 'settings.generalSettings.openLinksWith': return 'Abrir enlaces con...';
			case 'settings.generalSettings.internalBrowser': return 'Navegador interno de la app';
			case 'settings.generalSettings.browserCustomTab': return 'Pestaña personalizada del navegador';
			case 'settings.generalSettings.systemBrowser': return 'Navegador del sistema';
			case 'settings.generalSettings.tags': return 'Etiquetas';
			case 'settings.generalSettings.defaultTags.defaultTags': return 'Etiquetas por defecto';
			case 'settings.generalSettings.defaultTags.defaultTagsDescription': return 'Define una lista de etiquetas que se añadirán por defecto al crear un marcador';
			case 'settings.generalSettings.defaultTags.newTag': return 'Nueva etiqueta';
			case 'settings.generalSettings.defaultTags.addTag': return 'Añadir etiqueta';
			case 'settings.generalSettings.defaultTags.removeThisTag': return 'Eliminar esta etiqueta';
			case 'settings.generalSettings.defaultTags.noDefaultTags': return 'No hay etiquetas por defecto';
			case 'settings.generalSettings.others': return 'Otros';
			case 'settings.generalSettings.setMarkAsUnreadDefault': return 'Marcar como no leído por defecto';
			case 'settings.generalSettings.setMarkAsUnreadDefaultDescription': return 'Habilitar por defecto la opción de marcar como leído al crear un marcador.';
			case 'webview.goBack': return 'Ir atrás';
			case 'webview.goForward': return 'Ir adelante';
			case 'webview.reload': return 'Recargar';
			case 'webview.openInSystemBrowser': return 'Abrir en el navegador del sistema';
			case 'webview.copyLinkClipboard': return 'Copiar enlace al portapapeles';
			case 'webview.linkCopiedClipboard': return 'Enlace copiado al portapapeles.';
			case 'webview.share': return 'Compartir';
			case 'webview.invalidBookmarkData': return 'El marcador tiene datos inválidos o está corrupto.';
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

