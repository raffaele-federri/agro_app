part of 'create_complain_bloc.dart';

@freezed
class CreateComplainState with _$CreateComplainState {
  const factory CreateComplainState.initial() = _Initial;
  const factory CreateComplainState.loading() = _loading;
  const factory CreateComplainState.error() = _error;
  const factory CreateComplainState.success(String response) = _success;
  const factory CreateComplainState.clear() = _clear;
  const factory CreateComplainState.fileHasData() = _formDataHasData;
}
