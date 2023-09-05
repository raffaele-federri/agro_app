part of 'rights_bloc.dart';

@freezed
class RightsEvent with _$RightsEvent {
  const factory RightsEvent.fetch() = _Fetch;
  const factory RightsEvent.fetchMore() = _FetchMore;
}
