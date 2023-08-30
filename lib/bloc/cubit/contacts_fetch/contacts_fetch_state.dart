part of 'contacts_fetch_cubit.dart';

@freezed
class ContactsFetchState with _$ContactsFetchState {
  const factory ContactsFetchState.initial() = _Initial;
  const factory ContactsFetchState.firstLoading() = _loading;
  const factory ContactsFetchState.success(List<Contact> fetchedContacts) = _success;
  const factory ContactsFetchState.loadMoreLoading() = _loadMoreLoading;
  const factory ContactsFetchState.loadMore() = _loadMore;
  const factory ContactsFetchState.error(String message) = _error;
}
