import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class ApiServices extends HttpOverrides {

  // GET ONE
  static Future<Map<String, dynamic>> consumeGetOne(String apiUrl) async {
    final Response response = await get(Uri.parse(apiUrl));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to get one.');
    }
  }

  // GET ALL
  static Future<List<dynamic>> consumeGetAll(String apiUrl) async {
    final Response response = await get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to get all.');
    }
  }

  // CREATE
  static Future<Map<String, dynamic>> consumeCreate(
      String apiUrl, Map body) async {
    final Response response = await post(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer 9b9e1b1cf3e63d001d1980a6d614c91c50a6b6ab8bbb3b23065f98b3af879648'
        },
        body: json.encode(body));
    print(response.statusCode);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to create.');
    }
  }

  // PUT
  static Future<Map<String, dynamic>> consumeUpdate(
      String apiUrl, Map body) async {
    final Response response = await put(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer 9b9e1b1cf3e63d001d1980a6d614c91c50a6b6ab8bbb3b23065f98b3af879648'
        },
        body: json.encode(body));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to create.');
    }
  }

  // PATCH
  static Future<Map<String, dynamic>> consumePatch(
      String apiUrl, Map body) async {
    final Response response = await patch(Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer 9b9e1b1cf3e63d001d1980a6d614c91c50a6b6ab8bbb3b23065f98b3af879648'
        },
        body: json.encode(body));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to create.');
    }
  }


  // DELETE
  static Future<void> consumeDelete(String apiUrl) async {
    final Response response = await delete(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      print("Deleted");
    } else {
      throw "Failed to delete.";
    }
  }
}