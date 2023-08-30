import 'dart:io';

import 'package:agro_app/network/api/api_helper.dart';
import 'package:agro_app/network/models/contacts/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_fetch_state.dart';

part 'contacts_fetch_cubit.freezed.dart';

class ContactsFetchCubit extends Cubit<ContactsFetchState> {
  ContactsFetchCubit() : super(const ContactsFetchState.initial());
  int page = 1;
  final List<Contact> _contact = [];

  Future<void> loadData() async {
    emit(const ContactsFetchState.firstLoading());

    try {
      final response = await ApiHelper.getClient().getContact(page, 10);
      if (response.status == 'success') {
        _contact.addAll(response.data.items);

        emit(ContactsFetchState.success(_contact));
      }
    } on SocketException {
      emit(const ContactsFetchState.error('No Internet Connection'));
    } catch (e) {
      print(e.toString());

      emit(
        ContactsFetchState.error(e.toString().contains('401')
            ? 'Incorrect Password'
            : 'Your OTP code has expired'),
      );
    }
  }

  Future<void> loadMoreData() async {
    emit(const ContactsFetchState.loadMoreLoading());
    try {
      page++;
      final response = await ApiHelper.getClient().getContact(page, 1);
      if (response.status == 'success') {
        _contact.addAll(response.data.items);

        emit(ContactsFetchState.success(_contact));
      } else {
        emit(const ContactsFetchState.error('No more data'));
      }
    } on SocketException {
      emit(const ContactsFetchState.error('No Internet Connection'));
    } catch (e) {
      print(e.toString());

      emit(
        ContactsFetchState.error(e.toString().contains('401')
            ? 'Incorrect Password'
            : 'Your OTP code has expired'),
      );
    }
  }
}
