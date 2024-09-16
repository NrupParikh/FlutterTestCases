
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/base_structure/base/base_view_model_getx.dart';
import 'package:flutter_application_1/base_structure/utils/utils.dart';
import 'package:get/get.dart';

class SampleViewModel extends BaseViewModel {

RxInt count = 0.obs;

void increaseCount() async{
  count(count.value + 1);

    final envData = envDetails();
   if (kDebugMode) {
     print("EnvDetails $envData");
   }

  //   final e = doEncryption("Hello");
  // if (kDebugMode) {
  //   debugPrint("EncryptedData ${e.base64}");
  // }

  //  final d = doDecryption(e);
  // if (kDebugMode) {
  //   debugPrint("DecryptedData $d");
  // }

  // String? isLoggedIn = await SecureStorageSingleton().storage.read(key: AppKey.keyIsLoggedIn);
  //   if (kDebugMode) {
  //   debugPrint("isLoggedIn  $isLoggedIn");
  // }
}


  @override
  void onInit() {
    super.onInit();
    if (kDebugMode) {
      print("Sample VM Initialized");
    }
  }
}



  // final e = doEncryption("Hello");
  // if (kDebugMode) {
  //   debugPrint("EncryptedData ${e.base64}");
  // }

  //  final d = doDecryption(e);
  // if (kDebugMode) {
  //   debugPrint("DecryptedData $d");
  // }

  
  // isJailBroken().then((isJailbroken) {
  //   debugPrint('Device is jailbroken: $isJailbroken');
  // }).catchError((error) {
  //   debugPrint('Error: $error');
  // });

  // isDeveloperModeOn().then((isRooted) {
  //   debugPrint('Developer mode is ON: $isRooted');
  // }).catchError((error) {
  //   debugPrint('Error: $error');
  // });

  // final envData = envDetails();
  //  if (kDebugMode) {
  //    print("EnvDetails $envData");
  //  }

