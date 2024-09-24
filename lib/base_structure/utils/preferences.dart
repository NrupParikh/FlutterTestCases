
import '../constants/app_key.dart';
import '../singleton/secure_storage_singleton.dart';

void setIsUserLoggedIn() async {
  await SecureStorageSingleton()
      .storage
      .write(key: AppKey.keyIsLoggedIn, value: true.toString());
}

Future<bool> isUserLoggedIn() async {
  final storedValue =
      await SecureStorageSingleton().storage.read(key: AppKey.keyIsLoggedIn);
  return storedValue != null ? bool.parse(storedValue) : false;
}

void setUserData(String userDataJson) async {
  await SecureStorageSingleton()
      .storage
      .write(key: AppKey.keyUserObject, value: userDataJson);
}

Future<String> getUserData() async {
  final jsonString =
      await SecureStorageSingleton().storage.read(key: AppKey.keyUserObject);
  return jsonString ?? "";
}


void setStoredLanguage(String selectedLanguage) async {
  await SecureStorageSingleton()
      .storage
      .write(key: AppKey.keyStoredLang, value: selectedLanguage);
}

Future<String> getStoredLanguage() async {
  final storedValue =
      await SecureStorageSingleton().storage.read(key: AppKey.keyStoredLang);
  return storedValue ?? "en";
}