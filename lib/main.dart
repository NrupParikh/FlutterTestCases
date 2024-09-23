import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/ui/main_base.dart';
import 'package:flutter_application_1/unit_test_class/album.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:screen_protector/screen_protector.dart';

import 'base_structure/routes/app_route.dart';

import 'base_structure/utils/preferences.dart';

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

  final myInitialLanguage = await getInitialLanguage();

  // Set Application orientation to support only Portrait mode
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);

  runApp(MyBaseApp(myInitialRoute,myInitialLanguage));
}

/*
Getting initial route by checking key_is_loggedIn from secure storage
If user logged In then pass '/home' or pass '/login' as initial route
*/

Future<String> getInitialRoute() async {
  final isLoggedIn = await isUserLoggedIn();
  return isLoggedIn ? Routes.home : Routes.login;
}

Future<String> getInitialLanguage() async {
  final local = await getStoredLanguage();
  return local;
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
