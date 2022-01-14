import 'package:flutter_rest_api_demo/global_constants.dart';
import 'package:flutter_rest_api_demo/models/user_model.dart';
import 'package:flutter_rest_api_demo/services/api_services.dart';

class UserServices {
  // Get list of users
  Future<List<Data>> getListUsers() async {
    String apiUrl = '$BASE_URL/users?page=1';
    final responseBody = await ApiServices.consumeGetOne(apiUrl);
    List<Data> listUserData =
        (responseBody['data'] as List).map((e) => Data.fromJson(e)).toList();

    return listUserData;
  }

  // Get a single user
  Future<Data> getSingleUser() async {
    String apiUrl = '$BASE_URL/users/2';
    final responseBody = await ApiServices.consumeGetOne(apiUrl);
    return Data.fromJson(responseBody['data']);
  }

  // Create user
  Future<Data> createUser(
      String name, String email, String gender, String status) async {
    String apiUrl = '$BASE_URL/users';
    Map body = {
      'name': name,
      'email': email,
      'gender': gender,
      'status': status
    };

    final responseBody = await ApiServices.consumeCreate(apiUrl, body);
    return Data.fromJson(responseBody);
  }

  // Update user
  Future<Data> updateUser(int userId, Data data) async {
    String apiUrl = '$BASE_URL/users/$userId';
    Map body = {
      'name': data.name,
      'email': data.email,
      'gender': data.gender,
      'status': data.status
    };
    final responseBody = await ApiServices.consumeUpdate(apiUrl, body);
    return Data.fromJson(responseBody);
  }
}
