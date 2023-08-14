import 'package:agro_app/network/models/address/address_data.dart';
import 'package:agro_app/network/models/address/address_response.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../network/api/api_client.dart';

part 'address_data_fetch_state.dart';

part 'address_data_fetch_cubit.freezed.dart';

class AddressDataFetchCubit extends Cubit<AddressDataFetchState> {
  AddressDataFetchCubit() : super(const AddressDataFetchState.initial());

  Future<void> getData() async {
    emit(const AddressDataFetchState.loading());

    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    final client = ApiClient(dio);

    try {
      final response = await client.getAddress();
      if (response.status == 'success' &&
          response.data != null &&
          response.data!.isNotEmpty) {
        List<AddressData> validData = [];
        for (var data in response.data!) {
          if (data.isValid) {
            validData.add(data.validRAddressData);
          }
        }
        emit(AddressDataFetchState.success(validData));
      } else {
        emit(const AddressDataFetchState.error());
      }
    } catch (e) {
      emit(const AddressDataFetchState.error());
    }
  }
}
