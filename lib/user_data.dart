import 'dart:html';

import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String? username;
  final String? phoneNumber;
  final String? password;
  final String? address;
  final int? age;
  final int? genderId;
  final int? regionId;
  final int? districtId;
  final int? statusId;

  const UserData( {
    required this.username,
    required this.phoneNumber,
    required this.password,
    required this.genderId,
    required this.age,
    required this.districtId,
    required this.regionId,
    required this.address,
    required this.statusId,
  });

  UserData copyWith({
    String? username,
    String? phoneNumber,
    String? password,
    int? genderId,
    int? age,
    int? districtId,
    int? regionId,
    String? address,
    int? statusId,
  }) {
    return UserData(
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      genderId: genderId ?? this.genderId,
      age: age ?? this.age,
      districtId: districtId ?? this.districtId,
      regionId: regionId ?? this.regionId,
      address: address ?? this.address,
      statusId: statusId ?? this.statusId,

    );
  }

  bool get isFirstStepFilled {
    final isPhoneNumberSet = phoneNumber != null && phoneNumber!.isNotEmpty;
    final isPasswordSet = password != null && password!.isNotEmpty;

    final isFirstStepFilled = isPhoneNumberSet && isPasswordSet;
    return isFirstStepFilled;
  }
  bool get isSecondStepFilled {
    final isUsernameSet = username != null && username!.isNotEmpty;
    final isGenderIdSet = genderId != null;

    final isSecondStepFilled = isUsernameSet && isGenderIdSet;
    return isSecondStepFilled;
  }
  bool get isThirdStepFilled {
    final isAgeSet = age != null;
    return isAgeSet;
  }

  bool get isAllSet {
    final isUsernameSet = username != null && username!.isNotEmpty;
    final isPhoneNumberSet = phoneNumber != null && phoneNumber!.isNotEmpty;
    final isPasswordSet = password != null && password!.isNotEmpty;
    final isAddressSet = address != null && address!.isNotEmpty;
    final isGenderIdSet = genderId != null;
    final isAgeSet = age != null;
    final isDistrictIdSet = districtId != null;
    final isStatusIdSet = statusId != null;

    final isAllSet = isUsernameSet &&
        isPhoneNumberSet &&
        isPasswordSet &&
        isAddressSet &&
        isGenderIdSet &&
        isAgeSet &&
        isDistrictIdSet &&
        isStatusIdSet;
    return isAllSet;
  }

  @override
  List<Object?> get props => [
        username,
        phoneNumber,
        password,
        genderId,
        age,
        districtId,
        address,
        statusId,
      ];
}
