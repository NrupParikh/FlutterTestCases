import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/base_structure/ui/main_base.dart';
import 'package:flutter_application_1/unit_test_class/album.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:http/http.dart' as http;
import 'package:screen_protector/screen_protector.dart';

import 'base_structure/constants/app_strings.dart';
import 'base_structure/constants/app_text_constant.dart';
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

  // runApp(const SampleTab());
}

/*
Getting initial route by checking key_is_loggedIn from secure storage
If user logged In then pass '/home' or pass '/login' as initial route
*/

Future<String> getInitialRoute() async {
  final isLoggedIn = await isUserLoggedIn();
  return isLoggedIn ? Routes.projectManagement : Routes.login;
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

class SampleTab extends StatefulWidget {
  const SampleTab({super.key});

  @override
  State<SampleTab> createState() => _SampleTabState();
}

class _SampleTabState extends State<SampleTab> {
  List<Tab> tabs = [
    const Tab(
      child: Text(AppStrings.tabRND,
          style:
              TextStyle(fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
    ),
    const Tab(
      child: Text(AppStrings.tabQuality,
          style:
              TextStyle(fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
    ),
    const Tab(
      child: Text(AppStrings.tabRegulatory,
          style:
              TextStyle(fontSize: 12, fontFamily: AppTextConstant.poppinsBold)),
    ),
  ];

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
          body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultTabController(
                initialIndex: 0,
                length: tabs.length,
                child: Scaffold(
                  appBar: AppBar(
                    title: const Text(""),
                    leading: const SizedBox(),
                    elevation: 0,
                    flexibleSpace: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBar(
                          tabAlignment: TabAlignment.fill,
                          isScrollable: false,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: tabs,
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(children: [
                    Form(
                      child: Column(
                        children: [
                          CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              title: const Text(AppStrings.approve),
                              value: false,
                              onChanged: (value) {}),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                hintText: AppStrings.hintEnterComment,
                                hintStyle: TextStyle(
                                    fontFamily: AppTextConstant.poppinsRegular),
                                label: Text(AppStrings.comment,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily:
                                            AppTextConstant.poppinsRegular)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    child: const Text(AppStrings.approve,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily:
                                                AppTextConstant.poppinsBold)),
                                    onPressed: () {}),
                                ElevatedButton(
                                    child: const Text(AppStrings.reject,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily:
                                                AppTextConstant.poppinsBold)),
                                    onPressed: () {}),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Center(
                      child: Text(AppStrings.tabQuality),
                    ),
                    const Center(
                      child: Text(AppStrings.tabRegulatory),
                    )
                  ]),
                ),
              ))),
    );
  }
}
