import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/unit_test_class/album.dart';
import 'package:http/http.dart' as http;


void main() {
  runApp(const MyApp());
}

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
      home:Scaffold(
      appBar: AppBar(        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Fetch Data From API"),
      ),
      body: Center(
        child: FutureBuilder<Album>(future: futureAlbum, builder:(context,snapshot){
          if(snapshot.hasData){
            return Text(snapshot.data!.title);
          }else if(snapshot.hasError){
            return Text("${snapshot.error}");
          }

          return const CircularProgressIndicator();} ,)
      ),),
    );
  }
}

// ================ Get Album from API
Future<Album> fetchAlbum(http.Client client) async{
  final response = await client.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
  if(response.statusCode == 200){
    return Album.fromJson(jsonDecode(response.body) as Map<String,dynamic>);
  }else {
    throw Exception("Fail to load Album");
  }
}