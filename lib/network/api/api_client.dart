import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/address/address_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://agro-system.onrender.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("countries/list")
  Future<AddressResponse> getAddress();


}
