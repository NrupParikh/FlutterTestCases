import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base_structure/constants/app_key.dart';
import 'package:flutter_application_1/base_structure/ui/main_base.dart';
import 'package:flutter_application_1/unit_test_class/album.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:screen_protector/screen_protector.dart';

import 'base_structure/routes/app_route.dart';
import 'base_structure/singleton/secure_storage_singleton.dart';

Future<void> main() async {
  // To guarantee that the Flutter framework is fully initialized before your app starts running
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Below line is for secure the API keys or any Key(s) also look in pubspec.yaml assets
  // env file is at root of the project where IV and DATA defined
  // await dotenv.load(fileName: ".env");

  // Preseve splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Protecting against data leakage
  await ScreenProtector.protectDataLeakageOff();
  // Disable Screenshot Capabilities
  await ScreenProtector.preventScreenshotOn();

  // Other initialization code, if needed

  final myInitialRoute = await getInitialRoute();
  runApp(MyBaseApp(myInitialRoute));
}

/*
Getting initial route by checking key_is_loggedIn from secure storage
If user logged In then pass '/home' or pass '/login' as initial route
*/

Future<String> getInitialRoute() async {
  final storedValue =
      await SecureStorageSingleton().storage.read(key: AppKey.keyIsLoggedIn);

  bool isLoggedIn = false;
  if (storedValue != null) {
    isLoggedIn = bool.parse(storedValue);
  }

  if (kDebugMode) {
    print("isLoggedIn = ${isLoggedIn.toString()}");
  }

  return isLoggedIn ? Routes.home : Routes.login;
}

// ====================================== EXAMPLE ONLY 
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    // Call API
    futureAlbum = fetchAlbum(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Fetch Data From API"),
        ),
        body: Center(
            child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return const CircularProgressIndicator();
          },
        )),
      ),
    );
  }
}

// ================ Get Album from API
Future<Album> fetchAlbum(http.Client client) async {
  final response = await client
      .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception("Fail to load Album");
  }
}

// ====================================== END OF EXAMPLE ONLY
