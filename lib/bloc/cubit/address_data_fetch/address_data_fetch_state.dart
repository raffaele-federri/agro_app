part of 'address_data_fetch_cubit.dart';

@freezed
class AddressDataFetchState with _$AddressDataFetchState {
  const factory AddressDataFetchState.initial() = _Initial;
  const factory AddressDataFetchState.loading() = _loading;
  const factory AddressDataFetchState.success(List<AddressData> data) = _success;
  const factory AddressDataFetchState.error() = _error;
}
