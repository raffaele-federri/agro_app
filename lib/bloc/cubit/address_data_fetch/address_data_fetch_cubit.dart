import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_data_fetch_state.dart';
part 'address_data_fetch_cubit.freezed.dart';

class AddressDataFetchCubit extends Cubit<AddressDataFetchState> {
  AddressDataFetchCubit() : super(const AddressDataFetchState.initial());
}
