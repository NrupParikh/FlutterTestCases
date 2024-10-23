import 'package:get/get_navigation/src/root/internacionalization.dart';
import '../../constants/app_strings.dart';

class Languages implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          AppStrings.appName: AppStrings.appName,
          AppStrings.lblFirstName: AppStrings.lblFirstName,
          AppStrings.lblEmail: AppStrings.lblEmail,
          AppStrings.lblSignInNow: AppStrings.lblSignInNow,
          AppStrings.lblEnterYourDetailsBelow:
              AppStrings.lblEnterYourDetailsBelow,
          AppStrings.lblEmailAddress: AppStrings.lblEmailAddress,
          AppStrings.lblPassword: AppStrings.lblPassword,
          AppStrings.lblForgotPasswordLink: AppStrings.lblForgotPasswordLink,
          AppStrings.lblLogin: AppStrings.lblLogin,
          AppStrings.lblForgotPassword: AppStrings.lblForgotPassword,
          AppStrings.lblSubmit: AppStrings.lblSubmit,
          AppStrings.lblGenerateOTP: AppStrings.lblGenerateOTP,
          AppStrings.lblBackToLogin: AppStrings.lblBackToLogin,
          AppStrings.lblFail: AppStrings.lblFail,
          AppStrings.errorPopupButtom: AppStrings.errorPopupButtom,
          AppStrings.lblSuccess: AppStrings.lblSuccess,
          AppStrings.lblQcAnalysis: AppStrings.lblQcAnalysis,
          AppStrings.lblQcInspectionPlan: AppStrings.lblQcInspectionPlan,
          AppStrings.lblQcDays: AppStrings.lblQcDays,
          AppStrings.lblSamplingPlan: AppStrings.lblSamplingPlan,
          AppStrings.lblReqiredSamplingPlan: AppStrings.lblReqiredSamplingPlan,

          AppStrings.lblProjectType: AppStrings.lblProjectType,
          AppStrings.lblProjectStatus: AppStrings.lblProjectStatus,
          AppStrings.lblLab: AppStrings.lblLab,
          AppStrings.lblProjectManager: AppStrings.lblProjectManager,

          AppStrings.lblProjectDateFrom: AppStrings.lblProjectDateFrom,
          AppStrings.lblProjectDateTo: AppStrings.lblProjectDateTo,
          AppStrings.lblFreeText: AppStrings.lblFreeText,

          AppStrings.lblLastName: AppStrings.lblLastName,
          AppStrings.lblLanguage: AppStrings.lblLanguage,
          AppStrings.lblSite: AppStrings.lblSite,
          AppStrings.lblDateFormat: AppStrings.lblDateFormat,
          AppStrings.lblTimeFormat: AppStrings.lblTimeFormat,

          AppStrings.lblProject: AppStrings.lblProject,
          AppStrings.lblTitle: AppStrings.lblTitle,
          AppStrings.lblDateOpened: AppStrings.lblDateOpened,
          AppStrings.lblCRMopportunity: AppStrings.lblCRMopportunity,

          AppStrings.lblClear: AppStrings.lblClear,
          AppStrings.lblSearch: AppStrings.lblSearch,

          AppStrings.lblMaterialName: AppStrings.lblMaterialName,
          AppStrings.lblMaterialId: AppStrings.lblMaterialId,
          AppStrings.lblDocType: AppStrings.lblDocType,
          AppStrings.lblAction: AppStrings.lblAction,
          AppStrings.lblDocLanguage: AppStrings.lblDocLanguage,
          AppStrings.lblTemplate: AppStrings.lblTemplate,
          AppStrings.lblDocDate: AppStrings.lblDocDate,
          AppStrings.lblExpDate: AppStrings.lblExpDate,
          AppStrings.lblFileName: AppStrings.lblFileName,
          AppStrings.lblFileExpDate: AppStrings.lblFileExpDate,
          AppStrings.lblVendorsMaterialCode: AppStrings.lblVendorsMaterialCode,
          AppStrings.lblBasePrice: AppStrings.lblBasePrice,
          AppStrings.lblVersion: AppStrings.lblVersion,

          AppStrings.lblCommonMaterialCode: AppStrings.lblCommonMaterialCode,
          AppStrings.lblDocumentTemplate: AppStrings.lblDocumentTemplate,
          AppStrings.lblSearchMaterial: AppStrings.lblSearchMaterial,
          AppStrings.lblSearchProject: AppStrings.lblSearchProject,
          AppStrings.lblSearchBusinessPartner:
              AppStrings.lblSearchBusinessPartner,
          AppStrings.lblCreationDateFrom: AppStrings.lblCreationDateFrom,
          AppStrings.lblCreationDateTo: AppStrings.lblCreationDateTo,
          AppStrings.lblExpirationDateFrom: AppStrings.lblExpirationDateFrom,
          AppStrings.lblExpirationDateTo: AppStrings.lblExpirationDateTo,

          AppStrings.lblRecipeId: AppStrings.lblRecipeId,
          AppStrings.lblName: AppStrings.lblName,
          AppStrings.lblCreatedBy: AppStrings.lblCreatedBy,
          AppStrings.lblCreatedOn: AppStrings.lblCreatedOn,
          AppStrings.lblBaseSize: AppStrings.lblBaseSize,
          AppStrings.lblUOM: AppStrings.lblUOM,
          AppStrings.lblCost: AppStrings.lblCost,
          AppStrings.lblCurrency: AppStrings.lblCurrency,

          // ========== MESSAGES
          AppStrings.msgNetworkErr: AppStrings.msgNetworkErr,
          AppStrings.msgLogoutConfirmation: AppStrings.msgLogoutConfirmation,
          AppStrings.msgDeleteDocConfirmation:
              AppStrings.msgDeleteDocConfirmation,
          AppStrings.msgDeleteRecipeConfirmation:
              AppStrings.msgDeleteRecipeConfirmation,

          AppStrings.ok: AppStrings.ok,
          AppStrings.cancel: AppStrings.cancel,

          // ========== VALIDATION MESSAGES
          AppStrings.valEnterEmail: AppStrings.valEnterEmail,
          AppStrings.valEnterPassword: AppStrings.valEnterPassword,
          AppStrings.valEnterOtp: AppStrings.valEnterOtp,

          // ========== HINT
          AppStrings.hintEnterYourEmail: AppStrings.hintEnterYourEmail,
          AppStrings.hintEnterYourPassword: AppStrings.hintEnterYourPassword,
          AppStrings.hintOTP: AppStrings.hintOTP,
          AppStrings.hintEnterYourOTP: AppStrings.hintEnterYourOTP,
          AppStrings.hintEnterComment: AppStrings.hintEnterComment,
          AppStrings.hintEnterQcDays: AppStrings.hintEnterQcDays,
          AppStrings.hintEnterFreeText: AppStrings.hintEnterFreeText,

          AppStrings.hintEnterFirstName: AppStrings.hintEnterFirstName,
          AppStrings.hintEnterLastName: AppStrings.hintEnterLastName,

          AppStrings.hintEnterCommonMaterialCode:
              AppStrings.hintEnterCommonMaterialCode,

          // ========== DRAWER ITEMS
          AppStrings.projectManagement: AppStrings.projectManagement,
          AppStrings.documentManagement: AppStrings.documentManagement,
          AppStrings.profile: AppStrings.profile,
          AppStrings.notifications: AppStrings.notifications,
          AppStrings.changePassword: AppStrings.changePassword,
          AppStrings.changeLanguage: AppStrings.changeLanguage,
          AppStrings.logout: AppStrings.logout,

          // ========== LANGUAGE
          AppStrings.english: AppStrings.english,
          AppStrings.italy: AppStrings.italy,
          AppStrings.spanish: AppStrings.spanish,

          // ========== API MESSAGES
          AppStrings.msgConnectInternet: AppStrings.msgConnectInternet,
          AppStrings.msgConnectionTimeOut: AppStrings.msgConnectionTimeOut,
          AppStrings.msgCanceled: AppStrings.msgCanceled,

          AppStrings.projectFilter: AppStrings.projectFilter,
          AppStrings.manageDocs: AppStrings.manageDocs,
          AppStrings.documentFilter: AppStrings.documentFilter,

          AppStrings.lblNRD: AppStrings.lblNRD,
          AppStrings.lblRCH: AppStrings.lblRCH,

          // ========== TABS
          AppStrings.tabRND: AppStrings.tabRND,
          AppStrings.tabIndustrialTrial: AppStrings.tabIndustrialTrial,
          AppStrings.tabHaccp: AppStrings.tabHaccp,
          AppStrings.tabQcInspection: AppStrings.tabQcInspection,
          AppStrings.tabPurchasingReview: AppStrings.tabPurchasingReview,

          AppStrings.tabFasttrackEvoluation: AppStrings.tabFasttrackEvoluation,
          AppStrings.tabIndustrialReview: AppStrings.tabIndustrialReview,

          AppStrings.tabQuality: AppStrings.tabQuality,
          AppStrings.tabRegulatory: AppStrings.tabRegulatory,

          // ========== OTHER
          AppStrings.approve: AppStrings.approve,
          AppStrings.reject: AppStrings.reject,
          AppStrings.comment: AppStrings.comment,
          AppStrings.updateQC: AppStrings.updateQC,

          AppStrings.all: AppStrings.all,
          AppStrings.created: AppStrings.created,
          AppStrings.started: AppStrings.started,
          AppStrings.closed: AppStrings.closed,
          AppStrings.stopped: AppStrings.stopped,
          AppStrings.cancelled: AppStrings.cancelled,

          AppStrings.msa: AppStrings.msa,
          AppStrings.nrd: AppStrings.nrd,
          AppStrings.pad: AppStrings.pad,
          AppStrings.rch: AppStrings.rch,
          AppStrings.tgi: AppStrings.tgi,

          AppStrings.noProjectFound: AppStrings.noProjectFound,
          AppStrings.noDocumentFound: AppStrings.noDocumentFound,
          AppStrings.noRecipeFound: AppStrings.noRecipeFound,
        },
        "it_IT": {
          AppStrings.appName: "Campus Italia",
          AppStrings.lblFirstName: "Nome di battesimo",
          AppStrings.lblEmail: "E-mail",
          AppStrings.lblSignInNow: "Accedi ora",
          AppStrings.lblEnterYourDetailsBelow:
              "Inserisci i tuoi dati qui sotto",
          AppStrings.lblEmailAddress: "Indirizzo e-mail *",
          AppStrings.lblPassword: "Parola d'ordine *",
          AppStrings.lblForgotPasswordLink: "Ha dimenticato la password?",
          AppStrings.lblLogin: "Login",
          AppStrings.lblForgotPassword: "Ha dimenticato la password",
          AppStrings.lblSubmit: "Invia",
          AppStrings.lblGenerateOTP: "Genera OTP",
          AppStrings.lblBackToLogin: "Torna al login",
          AppStrings.lblFail: "Fallire !",
          AppStrings.errorPopupButtom: "Va bene",
          AppStrings.lblSuccess: "Successo !",
          AppStrings.lblQcAnalysis: "Analisi QC",
          AppStrings.lblQcInspectionPlan: "Piano di ispezione QC *",
          AppStrings.lblQcDays: "Giornate di controllo qualità",
          AppStrings.lblSamplingPlan: "Piano di campionamento",
          AppStrings.lblReqiredSamplingPlan: "Piano di campionamento *",

          AppStrings.lblProjectType: "Tipo di progetto",
          AppStrings.lblProjectStatus: "Stato del progetto",
          AppStrings.lblLab: "Laboratorio",
          AppStrings.lblProjectManager: "Responsabile del progetto",

          AppStrings.lblProjectDateFrom: "Data del progetto da",
          AppStrings.lblProjectDateTo: "Data del progetto a",
          AppStrings.lblFreeText: "Testo libero",

          AppStrings.lblLastName: "Cognome *",
          AppStrings.lblLanguage: "Lingua *",
          AppStrings.lblSite: "Sito *",
          AppStrings.lblDateFormat: "Formato data",
          AppStrings.lblTimeFormat: "Formato ora",

          AppStrings.lblProject: "Progetto",
          AppStrings.lblTitle: "Titolo",
          AppStrings.lblDateOpened: "Data di apertura",
          AppStrings.lblCRMopportunity: "Opportunità CRM",

          AppStrings.lblClear: "Chiara",
          AppStrings.lblSearch: "Ricerca",

          AppStrings.lblMaterialName: "Nome del materiale",
          AppStrings.lblMaterialId: "Identificativo materiale",
          AppStrings.lblDocType: "Tipo documento",
          AppStrings.lblAction: "Azione",
          AppStrings.lblDocLanguage: "Lingua",
          AppStrings.lblTemplate: "Modello",
          AppStrings.lblDocDate: "Data del documento",
          AppStrings.lblExpDate: "Data di scadenza del documento",
          AppStrings.lblFileName: "Nome del file",
          AppStrings.lblFileExpDate: "Data di scadenza del file",
          AppStrings.lblVendorsMaterialCode: "Codice materiale del venditore",
          AppStrings.lblBasePrice: "Prezzo base",
          AppStrings.lblVersion: "Versione",

          AppStrings.lblCommonMaterialCode: "Codice materiale comune",
          AppStrings.lblDocumentTemplate: "Modello di documento",
          AppStrings.lblSearchMaterial: "Cerca materiale",
          AppStrings.lblSearchProject: "Progetto di ricerca",
          AppStrings.lblSearchBusinessPartner: "Cerca partner commerciale",
          AppStrings.lblCreationDateFrom: "Data di creazione da",
          AppStrings.lblCreationDateTo: "Data di creazione a",
          AppStrings.lblExpirationDateFrom: "Data di scadenza da",
          AppStrings.lblExpirationDateTo: "Data di scadenza a",

          AppStrings.lblRecipeId: "Identificativo della ricetta",
          AppStrings.lblName: "Nome",
          AppStrings.lblCreatedBy: "Creato da",
          AppStrings.lblCreatedOn: "Creato il",
          AppStrings.lblBaseSize: "Dimensione base",
          AppStrings.lblUOM: "UM",
          AppStrings.lblCost: "Costo",
          AppStrings.lblCurrency: "Valuta",

          // ========== MESSAGES
          AppStrings.msgNetworkErr: "Errore di rete",
          AppStrings.msgLogoutConfirmation:
              "Sei sicuro di voler uscire dall'applicazione?",
          AppStrings.msgDeleteDocConfirmation:
              'Sei sicuro di voler eliminare questo documento?',

          AppStrings.msgDeleteRecipeConfirmation:
              "Sei sicuro di voler eliminare questa ricetta?",

          AppStrings.ok: "OK",
          AppStrings.cancel: "Cancellare",

          // ========== VALIDATION MESSAGES
          AppStrings.valEnterEmail: "Inserisci l'e-mail",
          AppStrings.valEnterPassword: "Inserisci la password",
          AppStrings.valEnterOtp: "Per favore inserisci otp",

          // ========== HINT
          AppStrings.hintEnterYourEmail: "Inserisci la tua email",
          AppStrings.hintEnterYourPassword: "Inserisci la tua password",
          AppStrings.hintOTP: "OTP",
          AppStrings.hintEnterYourOTP: "Inserisci la tua OTP",
          AppStrings.hintEnterComment: "Inserisci il commento",
          AppStrings.hintEnterQcDays:
              "Inserisci i giorni del controllo qualità",
          AppStrings.hintEnterFreeText: "Inserisci testo libero",

          AppStrings.hintEnterFirstName: "Inserisci il nome",
          AppStrings.hintEnterLastName: "Inserisci il cognome",

          AppStrings.hintEnterCommonMaterialCode:
              "Inserisci il codice materiale comune",

          // ========== DRAWER ITEMS
          AppStrings.projectManagement: "Gestione del progetto",
          AppStrings.documentManagement: "Gestione dei documenti",
          AppStrings.profile: "Profilo",
          AppStrings.notifications: "Notifiche",
          AppStrings.changePassword: "Cambiare la password",
          AppStrings.changeLanguage: "Cambia lingua",
          AppStrings.logout: "Esci",

          // ========== LANGUAGE
          AppStrings.english: "Inglese",
          AppStrings.italy: "Italia",
          AppStrings.spanish: "spagnolo",

          // ========== API MESSAGES
          AppStrings.msgConnectInternet: "Si prega di connettersi a Internet",
          AppStrings.msgConnectionTimeOut:
              "Eccezione di timeout della connessione",
          AppStrings.msgCanceled: "Annullato",

          AppStrings.projectFilter: "Filtro del progetto",
          AppStrings.manageDocs: "Gestisci documenti",
          AppStrings.documentFilter: "Filtro documenti",

          AppStrings.lblNRD: "NRD",
          AppStrings.lblRCH: "RCH",

          // ========== TABS
          AppStrings.tabRND: "Ricerca e sviluppo",
          AppStrings.tabIndustrialTrial: "Prova industriale",
          AppStrings.tabHaccp: "HACCP",
          AppStrings.tabQcInspection: "Ispezione QC",
          AppStrings.tabPurchasingReview: "Revisione degli acquisti",

          AppStrings.tabFasttrackEvoluation: "Evoluzione rapida",
          AppStrings.tabIndustrialReview: "Revisione industriale",

          AppStrings.tabQuality: "Qualità",
          AppStrings.tabRegulatory: "Normativo",

          // ========== OTHER
          AppStrings.approve: "Approvare",
          AppStrings.reject: "Rifiutare",
          AppStrings.comment: "Commento",
          AppStrings.updateQC: "Aggiorna il controllo di qualità",

          AppStrings.all: "Tutto",
          AppStrings.created: "Creata",
          AppStrings.started: "Iniziata",
          AppStrings.closed: "Chiusa",
          AppStrings.stopped: "Fermato",
          AppStrings.cancelled: "Annullata",

          AppStrings.msa: "MSA-Attivazione del sito materiale",
          AppStrings.nrd: "NRD-Sviluppo di nuove ricette",
          AppStrings.pad: "PAD-Disattivazione dell'attivazione del prodotto",
          AppStrings.rch: "RCH-Cambio ricetta",
          AppStrings.tgi: "TGI-Introduzione ai beni scambiati",

          AppStrings.noProjectFound: "Nessun progetto trovato",
          AppStrings.noDocumentFound: "Nessun documento trovato",
          AppStrings.noRecipeFound: "Nessuna ricetta trovata",
        },
        "es_ES": {
          AppStrings.appName: "Campus Italia",
          AppStrings.lblFirstName: "Nombre de pila",
          AppStrings.lblEmail: "Correo electrónico",

          AppStrings.lblSignInNow: "Iniciar sesión ahora",
          AppStrings.lblEnterYourDetailsBelow:
              "Ingrese sus datos a continuación",
          AppStrings.lblEmailAddress: "Dirección de correo electrónico *",
          AppStrings.lblPassword: "Contraseña *",
          AppStrings.lblForgotPasswordLink: "Has olvidado tu contraseña?",
          AppStrings.lblLogin: "Acceso",
          AppStrings.lblForgotPassword: "Has olvidado tu contraseña",
          AppStrings.lblSubmit: "Entregar",
          AppStrings.lblGenerateOTP: "Generar OTP",
          AppStrings.lblBackToLogin: "Volver a iniciar sesión",
          AppStrings.lblFail: "Fallar !",
          AppStrings.errorPopupButtom: "Bueno",
          AppStrings.lblSuccess: "Éxito !",
          AppStrings.lblQcAnalysis: "Análisis de control de calidad",
          AppStrings.lblQcInspectionPlan:
              "Plan de inspección de control de calidad *",
          AppStrings.lblQcDays: "Días de control de calidad",
          AppStrings.lblSamplingPlan: "Plan de muestreo",
          AppStrings.lblReqiredSamplingPlan: "Plan de muestreo *",

          AppStrings.lblProjectType: "Tipo de proyecto",
          AppStrings.lblProjectStatus: "Estado del proyecto",
          AppStrings.lblLab: "Laboratorio",
          AppStrings.lblProjectManager: "Gerente de proyecto",

          AppStrings.lblProjectDateFrom: "Fecha del proyecto desde",
          AppStrings.lblProjectDateTo: "Fecha del proyecto hasta",
          AppStrings.lblFreeText: "Texto libre",

          AppStrings.lblLastName: "Apellido *",
          AppStrings.lblLanguage: "Idioma *",
          AppStrings.lblSite: "Sitio *",
          AppStrings.lblDateFormat: "Formato de fecha",
          AppStrings.lblTimeFormat: "Formato de hora",

          AppStrings.lblProject: "Proyecto",
          AppStrings.lblTitle: "Título",
          AppStrings.lblDateOpened: "Fecha de apertura",
          AppStrings.lblCRMopportunity: "Oportunidad de CRM",

          AppStrings.lblClear: "Claro",
          AppStrings.lblSearch: "Buscar",

          AppStrings.lblMaterialName: "Nombre del material",
          AppStrings.lblMaterialId: "Identificación del material",
          AppStrings.lblDocType: "Tipo de documento",
          AppStrings.lblAction: "Acción",
          AppStrings.lblDocLanguage: "Idioma",
          AppStrings.lblTemplate: "Plantilla",
          AppStrings.lblDocDate: "Fecha del documento",
          AppStrings.lblExpDate: "Fecha de vencimiento del documento",
          AppStrings.lblFileName: "Nombre del archivo",
          AppStrings.lblFileExpDate: "Fecha de vencimiento del archivo",
          AppStrings.lblVendorsMaterialCode: "Código de material del proveedor",
          AppStrings.lblBasePrice: "Precio base",
          AppStrings.lblVersion: "Versión",

          AppStrings.lblCommonMaterialCode: "Código de materiales común",
          AppStrings.lblDocumentTemplate: "Documento ejemplar",
          AppStrings.lblSearchMaterial: "Buscar materiales",
          AppStrings.lblSearchProject: "Proyecto de búsqueda",
          AppStrings.lblSearchBusinessPartner: "Buscar socio comercial",
          AppStrings.lblCreationDateFrom: "Fecha de creación desde",
          AppStrings.lblCreationDateTo: "Fecha de creación hasta",
          AppStrings.lblExpirationDateFrom: "Fecha de vencimiento desde",
          AppStrings.lblExpirationDateTo: "Fecha de vencimiento hasta",

          AppStrings.lblRecipeId: "ID de receta",
          AppStrings.lblName: "Nombre",
          AppStrings.lblCreatedBy: "Creado por",
          AppStrings.lblCreatedOn: "Creado el",
          AppStrings.lblBaseSize: "Tamaño básico",
          AppStrings.lblUOM: "unidad de medida",
          AppStrings.lblCost: "Costo",
          AppStrings.lblCurrency: "Divisa",

          // ========== MESSAGES
          AppStrings.msgNetworkErr: "Error de red",
          AppStrings.msgLogoutConfirmation:
              "¿Está seguro de que desea cerrar sesión en la aplicación?",

          AppStrings.msgDeleteDocConfirmation:
              "¿Está seguro de que desea eliminar este documento?",

          AppStrings.msgDeleteRecipeConfirmation:
              "¿Estás seguro de que quieres eliminar esta receta?",

          AppStrings.ok: "De acuerdo",
          AppStrings.cancel: "Cancelar",

          // ========== VALIDATION MESSAGES
          AppStrings.valEnterEmail: "Por favor ingrese el correo electrónico",
          AppStrings.valEnterPassword: "Por favor ingrese la contraseña",
          AppStrings.valEnterOtp: "Por favor ingresa otp",

          // ========== HINT
          AppStrings.hintEnterYourEmail:
              "introduce tu dirección de correo electrónico",
          AppStrings.hintEnterYourPassword: "Introduce tu contraseña",
          AppStrings.hintOTP: "OTP",
          AppStrings.hintEnterYourOTP: "Ingresa tu OTP",
          AppStrings.hintEnterComment: "Introducir comentario",
          AppStrings.hintEnterFreeText: "Ingrese texto libre",

          AppStrings.hintEnterFirstName: "Introduce el nombre",
          AppStrings.hintEnterLastName: "Introduce el apellido",

          AppStrings.hintEnterCommonMaterialCode:
              "Introduzca el código de material común",

          // ========== DRAWER ITEMS
          AppStrings.projectManagement: "Gestión de proyectos",
          AppStrings.documentManagement: "Gestión de documentos",
          AppStrings.profile: "Perfil",
          AppStrings.notifications: "Notificaciones",
          AppStrings.changePassword: "Cambiar la contraseña",
          AppStrings.changeLanguage: "Cambiar idioma",
          AppStrings.logout: "Cerrar sesión",
          AppStrings.hintEnterQcDays:
              "Introduzca los días de control de calidad",

          // ========== LANGUAGE
          AppStrings.english: "Inglés",
          AppStrings.italy: "Italia",
          AppStrings.spanish: "Español",

          // ========== API MESSAGES
          AppStrings.msgConnectInternet: "Por favor conectate a internet",
          AppStrings.msgConnectionTimeOut:
              "Excepción de tiempo de espera de conexión",
          AppStrings.msgCanceled: "Cancelado",

          AppStrings.projectFilter: "Filtro de proyecto",
          AppStrings.manageDocs: "Administrar documentos",
          AppStrings.documentFilter: "Filtro de documentos",

          AppStrings.lblNRD: "NRD",
          AppStrings.lblRCH: "RCH",

          // ========== TABS
          AppStrings.tabRND: "I+D",
          AppStrings.tabIndustrialTrial: "Prova interna",
          AppStrings.tabHaccp: "HACCP",
          AppStrings.tabQcInspection: "Ispezione QC",
          AppStrings.tabPurchasingReview: "Revisione degli acquisti",

          AppStrings.tabFasttrackEvoluation: "Evolución acelerada",
          AppStrings.tabIndustrialReview: "Revisión industrial",

          AppStrings.tabQuality: "Calidad",
          AppStrings.tabRegulatory: "Regulador",

          // ========== OTHER
          AppStrings.approve: "Aprobar",
          AppStrings.reject: "Rechazar",
          AppStrings.comment: "Comentario",
          AppStrings.updateQC: "Actualizar control de calidad",

          AppStrings.all: "Toda",
          AppStrings.created: "Creado",
          AppStrings.started: "Comenzó",
          AppStrings.closed: "Cerrada",
          AppStrings.stopped: "Interrumpida",
          AppStrings.cancelled: "Cancelada",

          AppStrings.msa: "MSA-Activación del sitio de materiales",
          AppStrings.nrd: "NRD-Desarrollo de nuevas recetas",
          AppStrings.pad: "PAD-Activación y desactivación del producto",
          AppStrings.rch: "RCH-Cambio de receta",
          AppStrings.tgi: "TGI-Introducción a los productos comercializados",

          AppStrings.noProjectFound: "No se encontró ningún proyecto",
          AppStrings.noDocumentFound: "No se encontró ningún documento",
          AppStrings.noRecipeFound: "No se encontró ninguna receta",
        }
      };
}
