import 'package:agro_app/network/models/working_status/status_items.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../network/api/api_client.dart';
import '../../../network/models/working_status/status_data.dart';

part 'working_status_state.dart';

part 'working_status_cubit.freezed.dart';

class WorkingStatusCubit extends Cubit<WorkingStatusState> {
  WorkingStatusCubit() : super(const WorkingStatusState.initial());

  Future<void> getData() async {
    emit(const WorkingStatusState.loading());

    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    final client = ApiClient(dio);

    try {
      final response = await client.getWorkingStatuses();
      if (response.status == 'success' && response.data.items != null) {
        List<Items> validData = [];
        for (var data in response.data.items) {
          validData.add(data);
        }
        emit(WorkingStatusState.success(validData));
      } else {
        emit(const WorkingStatusState.error());
      }
    } catch (e) {
      emit(const WorkingStatusState.error());
    }
  }
}
