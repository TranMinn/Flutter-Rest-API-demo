
import 'package:flutter_rest_api_demo/global_constants.dart';
import 'package:flutter_rest_api_demo/models/post_model.dart';
import 'package:flutter_rest_api_demo/services/api_services.dart';

class PostServices {

  Future<List<Data>> getListPostData() async {
      String apiUrl = '$BASE_URL/posts?page=1';
      final responseBody = await ApiServices.consumeGetOne(apiUrl);
      List<Data> listData = (responseBody['data'] as List).map((i) => Data.fromJson(i)).toList();
      return listData;
  }
}