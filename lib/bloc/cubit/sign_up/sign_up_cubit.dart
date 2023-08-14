import 'package:agro_app/user_data.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  var _data = const UserData(
    username: null,
    phoneNumber: null,
    password: null,
    genderId: null,
    age: null,
    regionId: null,
    districtId: null,
    address: null,
    statusId: null,
  );

  SignUpCubit() : super(const SignUpState.initial());

  void setPhone(String phone) {
    _data = _data.copyWith(phoneNumber: phone);
    _emitter();
  }

  void setPassword(String password) {
    _data = _data.copyWith(password: password);
    _emitter();
  }

  void setUsername(String username) {
    _data = _data.copyWith(username: username);
    _emitter();
  }

  void setGenderId(int genderId) {
    _data = _data.copyWith(genderId: genderId);
    _emitter();
  }

  void setAge(int age) {
    _data = _data.copyWith(age: age);
    _emitter();
  }

  void setDistrictId(int districtId) {
    _data = _data.copyWith(districtId: districtId);
    _emitter();
  }
  void setRegionId(int regionId) {
    _data = _data.copyWith(districtId: regionId);
    _emitter();
  }

  void setStatusId(int statusId) {
    _data = _data.copyWith(statusId: statusId);
    _emitter();
  }

  void _emitter() {
    if (_data.isAllSet) {
      emit(SignUpState.ready(_data));
    } else {
      emit(SignUpState.settingUp(_data));
    }
  }
}
