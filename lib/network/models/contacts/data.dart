import 'package:agro_app/network/models/rights/right.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'contact.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class ContactsData with _$ContactsData {
  const factory ContactsData({
    required int total,
    required List<Contact> items,
  }) = _ContactsData;

  factory ContactsData.fromJson(Map<String, Object?> json) =>
      _$ContactsDataFromJson(json);
}