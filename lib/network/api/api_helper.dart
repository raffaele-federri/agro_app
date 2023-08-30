import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


import 'api_client.dart';


class ApiHelper {
  static ApiClient? client;
  static ApiClient? simpleClient;

  static ApiClient getClient() {
    client ??= _getClient();
    return client!;
  }

  static ApiClient getSimpleClient() {
    simpleClient ??= _getSimpleClient();
    return simpleClient!;
  }

  static ApiClient _getClient(){
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(requestBody: true , requestHeader: true , responseHeader: true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTMyOTU4NTIsImV4cCI6MTY5NTg4Nzg1MiwidXNlcl9pZCI6MTIsInBlcm1pc3Npb25zIjpbInJlYWRfdXNlciIsInVwZGF0ZV91c2VyIiwiZGVsZXRlX3VzZXIiLCJyZWFkX2NhdGVnb3J5IiwicmVhZF9yaWdodCIsInJlYWRfZGVwYXJ0bWVudCIsInJlYWRfZ3VpZGUiXX0.jy9Hd473iGTaJeSFVNcqHypoa0Gg9-DmZUegGB9300c';
          options.headers['Authorization'] = 'Bearer $token';
          return handler.next(options);
        },
        onError: (error, handler) async {
          return handler.next(error);
        },
      ),
    );
    return ApiClient(dio);
  }

  static ApiClient _getSimpleClient(){
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ApiClient(dio);
  }
}

// 998935366275
// Qwe12345!
