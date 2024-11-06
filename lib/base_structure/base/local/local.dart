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

          AppStrings.lblCurrentPassword: AppStrings.lblCurrentPassword,
          AppStrings.lblNewPassword: AppStrings.lblNewPassword,
          AppStrings.lblConfirmPassword: AppStrings.lblConfirmPassword,

          AppStrings.lblForgotPasswordLink: AppStrings.lblForgotPasswordLink,
          AppStrings.lblLogin: AppStrings.lblLogin,
          AppStrings.lblForgotPassword: AppStrings.lblForgotPassword,
          AppStrings.lblSubmit: AppStrings.lblSubmit,
          AppStrings.lblSave: AppStrings.lblSave,
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

          AppStrings.lblMoQ: AppStrings.lblMoQ,
          AppStrings.lblBagWeightKg: AppStrings.lblBagWeightKg,
          AppStrings.lblPalletWieightKg: AppStrings.lblPalletWieightKg,
          AppStrings.lblMinLevel: AppStrings.lblMinLevel,
          AppStrings.lblLeadTimeDD: AppStrings.lblLeadTimeDD,
          AppStrings.lblPalletHeightCM: AppStrings.lblPalletHeightCM,
          AppStrings.lblBagsOrPallet: AppStrings.lblBagsOrPallet,
          AppStrings.lblSupplyLimitations: AppStrings.lblSupplyLimitations,

          AppStrings.lblPurchasingNotes: AppStrings.lblPurchasingNotes,
          AppStrings.lblChangePlan: AppStrings.lblChangePlan,
          AppStrings.lblPreferredDateForChange:
              AppStrings.lblPreferredDateForChange,

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

          AppStrings.lblPackType: AppStrings.lblPackType,
          AppStrings.lblPalletType: AppStrings.lblPalletType,
          AppStrings.lblMajorCode: AppStrings.lblMajorCode,
          AppStrings.lblMinorCode: AppStrings.lblMinorCode,

          AppStrings.lblPalletizationIssues: AppStrings.lblPalletizationIssues,
          AppStrings.lblWarehouseZone: AppStrings.lblWarehouseZone,

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

          AppStrings.lblIncludeInHACCPplan: AppStrings.lblIncludeInHACCPplan,
          AppStrings.lblMicroAnalysisNeeded: AppStrings.lblMicroAnalysisNeeded,

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

          AppStrings.valEnterCurrentPassword:
              AppStrings.valEnterCurrentPassword,
          AppStrings.valEnterNewPassword: AppStrings.valEnterNewPassword,
          AppStrings.valEnterConfirmPassword:
              AppStrings.valEnterConfirmPassword,

          // ========== HINT
          AppStrings.hintEnterYourEmail: AppStrings.hintEnterYourEmail,
          AppStrings.hintEnterYourPassword: AppStrings.hintEnterYourPassword,
          AppStrings.hintOTP: AppStrings.hintOTP,
          AppStrings.hintEnterYourOTP: AppStrings.hintEnterYourOTP,
          AppStrings.hintEnterComment: AppStrings.hintEnterComment,
          AppStrings.hintEnterQcDays: AppStrings.hintEnterQcDays,

          AppStrings.hintEnterFreeText: AppStrings.hintEnterFreeText,
          AppStrings.hintEnterMoQ: AppStrings.hintEnterMoQ,
          AppStrings.hintEnterBagWeight: AppStrings.hintEnterBagWeight,
          AppStrings.hintEnterPalletWeight: AppStrings.hintEnterPalletWeight,
          AppStrings.hintEnterMinLevel: AppStrings.hintEnterMinLevel,
          AppStrings.hintEnterLeadTimeDD: AppStrings.hintEnterLeadTimeDD,
          AppStrings.hintEnterPalletHeight: AppStrings.hintEnterPalletHeight,
          AppStrings.hintEnterBagsOrPallet: AppStrings.hintEnterBagsOrPallet,
          AppStrings.hintEnterSupplyLimitations:
              AppStrings.hintEnterSupplyLimitations,

          AppStrings.hintEnterPalletizationIssues:
              AppStrings.hintEnterPalletizationIssues,

          AppStrings.hintEnterMicroAnalysisReq:
              "Enter Micro Analysis Requirements",
          AppStrings.hintEnterChemicalAnalysisReq:
              "Enter Chemical Analysis Requirements",
          AppStrings.hintEnterAllergenAnalysisReq:
              "Enter Allergen Analysis Requirements",

          AppStrings.hintEnterWarehouseZone: AppStrings.hintEnterWarehouseZone,

          AppStrings.hintEnterFirstName: AppStrings.hintEnterFirstName,
          AppStrings.hintEnterLastName: AppStrings.hintEnterLastName,

          AppStrings.hintEnterCommonMaterialCode:
              AppStrings.hintEnterCommonMaterialCode,

          AppStrings.hintEnterYourCurrentPassword:
              AppStrings.hintEnterYourCurrentPassword,
          AppStrings.hintEnterYourNewPassword:
              AppStrings.hintEnterYourNewPassword,
          AppStrings.hintEnterPasswordAgain: AppStrings.hintEnterPasswordAgain,

          AppStrings.hintEnterPurchasingNotes:
              AppStrings.hintEnterPurchasingNotes,
          AppStrings.hintEnterChangePlan: AppStrings.hintEnterChangePlan,

          AppStrings.msgPasswordMustBeMatch: AppStrings.msgPasswordMustBeMatch,
          AppStrings.msgPasswordUpdated: AppStrings.msgPasswordUpdated,

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

          AppStrings.lblTGI: AppStrings.lblTGI,
          AppStrings.lblPAD: AppStrings.lblPAD,
          AppStrings.lblMSA: AppStrings.lblMSA,

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

          AppStrings.tabPurchasing: AppStrings.tabPurchasing,
          AppStrings.tabWarehousing: AppStrings.tabWarehousing,

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
          AppStrings.lblEmailAddress: "Indirizzo e-mail*",
          AppStrings.lblPassword: "Parola d'ordine*",

          AppStrings.lblCurrentPassword: "Password attuale*",
          AppStrings.lblNewPassword: "Nuova password*",
          AppStrings.lblConfirmPassword: "Conferma password*",

          AppStrings.lblForgotPasswordLink: "Ha dimenticato la password?",
          AppStrings.lblLogin: "Login",
          AppStrings.lblForgotPassword: "Ha dimenticato la password",

          AppStrings.lblSave: "Salva",

          AppStrings.lblSubmit: "Invia",
          AppStrings.lblGenerateOTP: "Genera OTP",
          AppStrings.lblBackToLogin: "Torna al login",
          AppStrings.lblFail: "Fallire !",
          AppStrings.errorPopupButtom: "Va bene",
          AppStrings.lblSuccess: "Successo !",
          AppStrings.lblQcAnalysis: "Analisi QC",
          AppStrings.lblQcInspectionPlan: "Piano di ispezione QC*",
          AppStrings.lblQcDays: "Giornate di controllo qualità",
          AppStrings.lblSamplingPlan: "Piano di campionamento",
          AppStrings.lblReqiredSamplingPlan: "Piano di campionamento*",

          AppStrings.lblProjectType: "Tipo di progetto",
          AppStrings.lblProjectStatus: "Stato del progetto",
          AppStrings.lblLab: "Laboratorio",
          AppStrings.lblProjectManager: "Responsabile del progetto",

          AppStrings.lblProjectDateFrom: "Data del progetto da",
          AppStrings.lblProjectDateTo: "Data del progetto a",
          AppStrings.lblFreeText: "Testo libero",

          AppStrings.lblMoQ: "MoQ",
          AppStrings.lblBagWeightKg: "Peso Sacco KG",
          AppStrings.lblPalletWieightKg: "Peso Pallet KG",
          AppStrings.lblMinLevel: "Livello minimo",
          AppStrings.lblLeadTimeDD: "Tempi di consegna GG",
          AppStrings.lblPalletHeightCM: "Altezza Bancale CM",
          AppStrings.lblBagsOrPallet: "Sacchi/Pallet",
          AppStrings.lblSupplyLimitations: "Limitazioni della fornitura*",

          AppStrings.lblPurchasingNotes: "Note di acquisto*",
          AppStrings.lblChangePlan: "Cambia piano*",
          AppStrings.lblPreferredDateForChange: "Data preferita per la modifica*",

          AppStrings.lblLastName: "Cognome*",
          AppStrings.lblLanguage: "Lingua*",
          AppStrings.lblSite: "Sito*",
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

          AppStrings.lblPackType: "Tipo di confezione",
          AppStrings.lblPalletType: "Tipo di pallet",
          AppStrings.lblMajorCode: "Codice Maggiore",
          AppStrings.lblMinorCode: "Codice minore",

          AppStrings.lblPalletizationIssues: "Problemi di pallettizzazione*",
          AppStrings.lblWarehouseZone: "Zona Magazzino*",

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

          AppStrings.lblIncludeInHACCPplan: "Includere nel piano HACCP",
          AppStrings.lblMicroAnalysisNeeded: "Necessaria la microanalisi",

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

          AppStrings.valEnterCurrentPassword: "Inserisci la password attuale",
          AppStrings.valEnterNewPassword: "Inserisci la nuova password",
          AppStrings.valEnterConfirmPassword:
              "Inserisci nuovamente la password",

          // ========== HINT
          AppStrings.hintEnterYourEmail: "Inserisci la tua email",
          AppStrings.hintEnterYourPassword: "Inserisci la tua password",
          AppStrings.hintOTP: "OTP",
          AppStrings.hintEnterYourOTP: "Inserisci la tua OTP",
          AppStrings.hintEnterComment: "Inserisci il commento",
          AppStrings.hintEnterQcDays:
              "Inserisci i giorni del controllo qualità",

          AppStrings.hintEnterMoQ: "Inserisci MoQ",
          AppStrings.hintEnterBagWeight: "Inserisci il peso del bagaglio",
          AppStrings.hintEnterPalletWeight: "Inserisci il peso del pallet",
          AppStrings.hintEnterMinLevel: "Inserisci il livello minimo",
          AppStrings.hintEnterLeadTimeDD: "Inserisci il tempo di consegna GG",
          AppStrings.hintEnterPalletHeight: "Inserisci l'altezza del pallet",
          AppStrings.hintEnterBagsOrPallet: "Inserisci sacchi/pallet",
          AppStrings.hintEnterSupplyLimitations:
              "Inserisci i limiti di fornitura",

          AppStrings.hintEnterPalletizationIssues:
              "Inserisci i problemi di pallettizzazione",

          AppStrings.hintEnterMicroAnalysisReq:
              "Inserisci i requisiti di microanalisi",
          AppStrings.hintEnterChemicalAnalysisReq:
              "Inserisci i requisiti di analisi chimica",
          AppStrings.hintEnterAllergenAnalysisReq:
              "Inserisci i requisiti per l'analisi degli allergeni",

          AppStrings.hintEnterWarehouseZone: "Entra nella zona del magazzino",

          AppStrings.hintEnterFreeText: "Inserisci testo libero",

          AppStrings.hintEnterFirstName: "Inserisci il nome",
          AppStrings.hintEnterLastName: "Inserisci il cognome",

          AppStrings.hintEnterCommonMaterialCode:
              "Inserisci il codice materiale comune",

          AppStrings.hintEnterYourCurrentPassword:
              "Inserisci la tua password attuale",
          AppStrings.hintEnterYourNewPassword:
              "Inserisci la tua nuova password",
          AppStrings.hintEnterPasswordAgain: "Immettere nuovamente la password",

          AppStrings.hintEnterPurchasingNotes: "Inserisci le note di acquisto",
          AppStrings.hintEnterChangePlan: "Inserisci il piano di modifica",

          AppStrings.msgPasswordMustBeMatch:
              "La password deve corrispondere alla nuova password",
          AppStrings.msgPasswordUpdated: "Password aggiornata",

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

          AppStrings.lblTGI: "TGI",
          AppStrings.lblPAD: "PAD",
          AppStrings.lblMSA: "MSA",

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

          AppStrings.tabPurchasing: "Acquisto",
          AppStrings.tabWarehousing: "Magazzinaggio",

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
          AppStrings.lblEmailAddress: "Dirección de correo electrónico*",
          AppStrings.lblPassword: "Contraseña*",

          AppStrings.lblCurrentPassword: "Contraseña actual*",
          AppStrings.lblNewPassword: "Nueva contraseña*",
          AppStrings.lblConfirmPassword: "Confirmar Contraseña*",

          AppStrings.lblForgotPasswordLink: "Has olvidado tu contraseña?",

          AppStrings.lblSave: "Ahorrar",

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
              "Plan de inspección de control de calidad*",
          AppStrings.lblQcDays: "Días de control de calidad",
          AppStrings.lblSamplingPlan: "Plan de muestreo",
          AppStrings.lblReqiredSamplingPlan: "Plan de muestreo*",

          AppStrings.lblProjectType: "Tipo de proyecto",
          AppStrings.lblProjectStatus: "Estado del proyecto",
          AppStrings.lblLab: "Laboratorio",
          AppStrings.lblProjectManager: "Gerente de proyecto",

          AppStrings.lblProjectDateFrom: "Fecha del proyecto desde",
          AppStrings.lblProjectDateTo: "Fecha del proyecto hasta",
          AppStrings.lblFreeText: "Texto libre",

          AppStrings.lblMoQ: "MoQ",
          AppStrings.lblBagWeightKg: "Peso de la bolsa kg",
          AppStrings.lblPalletWieightKg: "Peso Palet KG",
          AppStrings.lblMinLevel: "Nivel mínimo",
          AppStrings.lblLeadTimeDD: "Plazo de entrega DD",
          AppStrings.lblPalletHeightCM: "Altura del palet CM",
          AppStrings.lblBagsOrPallet: "Bolsas/Palet",
          AppStrings.lblSupplyLimitations: "Limitaciones de suministro",

          AppStrings.lblPurchasingNotes: "Notas de compra*",
          AppStrings.lblChangePlan: "Cambiar plan*",
          AppStrings.lblPreferredDateForChange: "Fecha preferida para el cambio*",

          AppStrings.lblLastName: "Apellido*",
          AppStrings.lblLanguage: "Idioma*",
          AppStrings.lblSite: "Sitio*",
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

          AppStrings.lblPackType: "Tipo de paquete",
          AppStrings.lblPalletType: "Tipo de palet",
          AppStrings.lblMajorCode: "Código mayor",
          AppStrings.lblMinorCode: "Código menor",

          AppStrings.lblPalletizationIssues: "Problemas de paletización*",
          AppStrings.lblWarehouseZone: "Zona de Almacén*",

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

          AppStrings.lblIncludeInHACCPplan: "Incluir en el plan HACCP",
          AppStrings.lblMicroAnalysisNeeded: "Se necesita microanálisis",

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

          AppStrings.valEnterCurrentPassword:
              "Por favor ingrese la contraseña actual",
          AppStrings.valEnterNewPassword:
              "Por favor ingrese una nueva contraseña",
          AppStrings.valEnterConfirmPassword:
              "Por favor ingrese la contraseña nuevamente",

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

          AppStrings.hintEnterYourCurrentPassword:
              "Ingrese su contraseña actual",
          AppStrings.hintEnterYourNewPassword: "Ingresa tu nueva contraseña",
          AppStrings.hintEnterPasswordAgain: "Ingrese la contraseña nuevamente",

          AppStrings.hintEnterPurchasingNotes: "Ingresar notas de compra",
          AppStrings.hintEnterChangePlan: "Ingrese al plan de cambio",

          AppStrings.msgPasswordMustBeMatch:
              "La contraseña debe coincidir con la nueva contraseña",
          AppStrings.msgPasswordUpdated: "Contraseña actualizada",

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

          AppStrings.hintEnterMoQ: "Introduzca la cantidad mínima de pedido",
          AppStrings.hintEnterBagWeight: "Introduzca el peso de la bolsa",
          AppStrings.hintEnterPalletWeight: "Introduzca el peso del palet",
          AppStrings.hintEnterMinLevel: "Introduzca el nivel mínimo",
          AppStrings.hintEnterLeadTimeDD: "Introduzca el plazo de entrega DD",
          AppStrings.hintEnterPalletHeight: "Introduzca la altura del palet",
          AppStrings.hintEnterBagsOrPallet: "Introducir bolsas/pallet",
          AppStrings.hintEnterSupplyLimitations:
              "Introduzca las limitaciones de suministro",

          AppStrings.hintEnterPalletizationIssues:
              "Ingrese los problemas de paletización",

          AppStrings.hintEnterMicroAnalysisReq:
              "Ingrese los requisitos de microanálisis",
          AppStrings.hintEnterChemicalAnalysisReq:
              "Ingrese los requisitos de análisis químico",
          AppStrings.hintEnterAllergenAnalysisReq:
              "Ingrese los requisitos de análisis de alérgenos",

          AppStrings.hintEnterWarehouseZone: "Ingresar a la zona de almacén",

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

          AppStrings.lblTGI: "TGI",
          AppStrings.lblPAD: "PAD",
          AppStrings.lblMSA: "MSA",

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

          AppStrings.tabPurchasing: "Adquisitivo",
          AppStrings.tabWarehousing: "almacenamiento",

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
