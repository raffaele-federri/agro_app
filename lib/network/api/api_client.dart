import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/address/address_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://dev24ws.tengebank.uz/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("ws-user/api/v2/users/settings/{username}")
  Future<AddressResponse> getAddress(@Path() String username);


}
