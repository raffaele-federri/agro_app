import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/address/address_response.dart';
import '../models/sign_up/sign_up_response.dart';
import '../models/working_status/working_status_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://agro-system.onrender.com/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("countries/list")
  Future<AddressResponse> getAddress();

  @GET("statuses/")
  Future<WorkingStatusResponse> getWorkingStatuses();

  @POST("users/")
  Future<SignUpResponse> signUp(@Body() Map<String , dynamic> requestBody);
}
