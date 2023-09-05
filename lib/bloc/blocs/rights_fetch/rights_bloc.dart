import 'dart:io';

import 'package:agro_app/network/models/rights/right.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../network/api/api_helper.dart';

part 'rights_event.dart';
part 'rights_state.dart';
part 'rights_bloc.freezed.dart';

class RightsBloc extends Bloc<RightsEvent, RightsState> {
  int page = 1;
  int totalRights = 0;
  final perPage = 12;
  final List<Right> _right = [];

  RightsBloc() : super(const RightsState.initial()) {
    on<_Fetch>(
          (event, emit) async {
        await _fetch(emit);
      },
    );
    on<_FetchMore>(
          (event, emit) async {
        await _fetchMore(emit);
      },
      transformer: droppable(),
    );
  }
  Future<void> _fetch(Emitter<RightsState> emit) async {
    emit(const RightsState.loading());

    try {
      final response = await ApiHelper.getClient().getRight(page, perPage);
      if (response.status == 'success') {
        _right.clear();
        _right.addAll(response.data.items);
        totalRights = response.data.total;
        emit(RightsState.success(_right));
      }
    } on SocketException {
      emit(const RightsState.error('No Internet Connection'));
    } catch (e) {
      print(e.toString());

      emit(
        RightsState.error(
          e.toString().contains('401')
              ? 'Incorrect Password'
              : 'Your OTP code has expired',
        ),
      );
    }
  }

  Future<void> _fetchMore(Emitter<RightsState> emit) async {
    if (page + 1 <= (totalRights / perPage).ceil()) {
      emit(const RightsState.loadingMore());
      try {
        final response =
        await ApiHelper.getClient().getRight(page + 1, perPage);
        if (response.status == 'success') {
          page++;
          _right.addAll(response.data.items);

          emit(RightsState.success(_right));
        } else {
          emit(const RightsState.loadingMoreError('No more data'));
        }
      } on SocketException {
        emit(const RightsState.loadingMoreError('No Internet Connection'));
      } catch (e) {
        print(e.toString());

        emit(
          RightsState.loadingMoreError(
            e.toString().contains('401')
                ? 'Incorrect Password'
                : 'Your OTP code has expired',
          ),
        );
      }
    }
  }
}
