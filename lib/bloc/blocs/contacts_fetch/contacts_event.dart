part of 'contacts_bloc.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.fetch() = _Fetch;
  const factory ContactsEvent.fetchMore() = _FetchMore;
}
