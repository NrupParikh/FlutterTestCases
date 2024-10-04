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

          // ========== MESSAGES
          AppStrings.msgNetworkErr: AppStrings.msgNetworkErr,
          AppStrings.msgLogoutConfirmation: AppStrings.msgLogoutConfirmation,

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
          AppStrings.comment: AppStrings.comment
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

          // ========== MESSAGES
          AppStrings.msgNetworkErr: "Errore di rete",
          AppStrings.msgLogoutConfirmation:
              "Sei sicuro di voler uscire dall'applicazione?",

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
          AppStrings.hintEnterYourOTP: "Inserisci la tua OTP *",
          AppStrings.hintEnterComment: "Inserisci il commento",

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
          AppStrings.comment: "Commento"
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
          AppStrings.lblForgotPasswordLink: "¿Has olvidado tu contraseña?",
          AppStrings.lblLogin: "Acceso",
          AppStrings.lblForgotPassword: "Has olvidado tu contraseña",
          AppStrings.lblSubmit: "Entregar",
          AppStrings.lblGenerateOTP: "Generar OTP",
          AppStrings.lblBackToLogin: "Volver a iniciar sesión",
          AppStrings.lblFail: "Fallar !",
          AppStrings.errorPopupButtom: "Bueno",
          AppStrings.lblSuccess: "Éxito !",

          // ========== MESSAGES
          AppStrings.msgNetworkErr: "Error de red",
          AppStrings.msgLogoutConfirmation:
              "¿Está seguro de que desea cerrar sesión en la aplicación?",

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
          AppStrings.hintEnterYourOTP: "Ingresa tu OTP *",
          AppStrings.hintEnterComment: "Introducir comentario",

          // ========== DRAWER ITEMS
          AppStrings.projectManagement: "Gestión de proyectos",
          AppStrings.documentManagement: "Gestión de documentos",
          AppStrings.profile: "Perfil",
          AppStrings.notifications: "Notificaciones",
          AppStrings.changePassword: "Cambiar la contraseña",
          AppStrings.changeLanguage: "Cambiar idioma",
          AppStrings.logout: "Cerrar sesión",

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
          AppStrings.comment: "Comentario"
        }
      };
}
