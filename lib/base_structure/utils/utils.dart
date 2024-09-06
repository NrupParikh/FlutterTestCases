import 'package:encrypt/encrypt.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

final iv = IV.fromLength(16);
final envKey = dotenv.env['KEY'];
final key = Key.fromUtf8("$envKey");

final encrypter = Encrypter(AES(key));

// Reading .env file data
String envDetails(){
  return 'ENV KEY: $envKey';
}

// Encryption
Encrypted doEncryption(String plainText){
  return encrypter.encrypt(plainText,iv: iv);
}

// Decryption
String doDecryption(Encrypted encryptedData){
  return encrypter.decrypt(encryptedData,iv: iv);
}

// Check Jailbroken iOS Devices
Future<bool> isJailBroken()async{
  return  FlutterJailbreakDetection.jailbroken;
}

// Check Developer Mode On
Future<bool> isDeveloperModeOn()async{
  return  FlutterJailbreakDetection.developerMode;
}