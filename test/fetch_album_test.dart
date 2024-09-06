

import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/unit_test_class/album.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

// Generate a MockClient using the Mockito package.
// Create new instances of this class in each test.

@GenerateMocks([http.Client])
void main(){
group("FetchAlbum", () {
  test("Returns albums if http call get success", () async {
    final client = MockClient((_) async =>
    
    // Creating fack Response object with status code
    http.Response('{"userId": 1, "id": 2, "title": "mock"}',200));

    // Expecting the API response is a type of Album class.
    // If yes then Test case is success or not
    expect(await fetchAlbum(client),isA<Album>());
  });

  test("Throws an exception if http call get error", () {
    final client = MockClient((_) async => http.Response("Not found",400));
    expect(fetchAlbum(client),throwsException);
  });
  
});
}