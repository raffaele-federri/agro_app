import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_data.dart';

part 'address_response.freezed.dart';
part 'address_response.g.dart';

@freezed
class AddressResponse with _$AddressResponse {
  const factory AddressResponse({
     required String status,
    required String detail,
    required List<AddressData>? data,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, Object?> json) =>
      _$AddressResponseFromJson(json);
}