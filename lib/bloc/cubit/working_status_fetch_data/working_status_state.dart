part of 'working_status_cubit.dart';

@freezed
class WorkingStatusState with _$WorkingStatusState {
  const factory WorkingStatusState.initial() = _Initial;
  const factory WorkingStatusState.loading() = _loading;
  const factory WorkingStatusState.success(List<Items> data) = _success;
  const factory WorkingStatusState.error() = _error;
}
