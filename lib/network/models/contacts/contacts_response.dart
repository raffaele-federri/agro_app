import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';




part 'contacts_response.freezed.dart';
part 'contacts_response.g.dart';

@freezed
class ContactsResponse with _$ContactsResponse {
  const factory ContactsResponse({
    required String status,
    required String detail,
    required ContactsData data,
  }) = _ContactsResponse;

  factory ContactsResponse.fromJson(Map<String, Object?> json) =>
      _$ContactsResponseFromJson(json);
}