import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/api/api_provider.dart';

class DioConsumer implements ApiProvider {
  final Dio dio;

  DioConsumer({required this.dio});
  @override
  Future getData(
      {required String path, Map<String, dynamic>? queryParams}) async {
    try {
      final response = await dio.get(path, queryParameters: queryParams);
      return jsonDecode(response.data);
    } catch (err) {
      print(err);
    }
  }
}
