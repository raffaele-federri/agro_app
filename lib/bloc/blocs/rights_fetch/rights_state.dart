part of 'rights_bloc.dart';

@freezed
class RightsState with _$RightsState {
  const factory RightsState.initial() = _Initial;
  const factory RightsState.loading() = _loading;
  const factory RightsState.success(List<Right> fetchedRights) = _success;
  const factory RightsState.loadingMore() = _loadMoreLoading;
  const factory RightsState.loadingMoreError(String message) = _loadingMoreError;
  const factory RightsState.error(String message) = _error;
}
