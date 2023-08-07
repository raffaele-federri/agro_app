part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.settingUp(UserData data) = _settingUp;
  const factory SignUpState.ready(UserData data) = _ready;
  const factory SignUpState.loading() = _loading;
  const factory SignUpState.error(String message) = _error;
  const factory SignUpState.success() = _success;
}
