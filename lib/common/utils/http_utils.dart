import 'package:dio/dio.dart';

class HttpUtils {
  static final HttpUtils _instance = HttpUtils._internal();
  factory HttpUtils() {
    return _instance;
  }

  late Dio dio;

  HttpUtils._internal() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://192.168.8.102:8000/',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {},
      contentType: 'application/json: charset=utf-8',
      responseType: ResponseType.json,
    );
    dio = Dio(options);
  }

  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
