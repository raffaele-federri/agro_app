part of 'contacts_bloc.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = _Initial;
  const factory ContactsState.loading() = _loading;
  const factory ContactsState.success(List<Contact> fetchedContacts) = _success;
  const factory ContactsState.loadingMore() = _loadMoreLoading;
  const factory ContactsState.loadingMoreError(String message) = _loadingMoreError;
  const factory ContactsState.error(String message) = _error;
}
