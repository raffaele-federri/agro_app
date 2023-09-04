part of 'contacts_fetch_cubit.dart';

@freezed
class ContactsFetchState with _$ContactsFetchState {
  const factory ContactsFetchState.initial() = _Initial;
  const factory ContactsFetchState.loading() = _loading;
  const factory ContactsFetchState.success(List<Contact> fetchedContacts) = _success;
  const factory ContactsFetchState.loadingMore() = _loadMoreLoading;
  const factory ContactsFetchState.loadingMoreError(String message) = _loadingMoreError;
  const factory ContactsFetchState.error(String message) = _error;
}
