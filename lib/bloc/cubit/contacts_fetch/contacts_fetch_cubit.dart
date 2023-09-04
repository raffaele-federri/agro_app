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
  int totalContacts = 0;
  final perPage = 6;
  final List<Contact> _contact = [];

  Future<void> loadData() async {
    emit(const ContactsFetchState.loading());

    try {
      final response = await ApiHelper.getClient().getContact(page, perPage);
      if (response.status == 'success') {
        _contact.clear();
        _contact.addAll(response.data.items);
        totalContacts = response.data.total;
        emit(ContactsFetchState.success(_contact));
      }
    } on SocketException {
      emit(const ContactsFetchState.error('No Internet Connection'));
    } catch (e) {
      print(e.toString());

      emit(
        ContactsFetchState.error(
          e.toString().contains('401')
              ? 'Incorrect Password'
              : 'Your OTP code has expired',
        ),
      );
    }
  }

  Future<void> loadMoreData() async {
    print('Fuck: $page => ${page + 1 <= (totalContacts / perPage).ceil()}');
    if (page + 1 <= (totalContacts / perPage).ceil()) {
      print(
          'Fuck suck: $page => ${page + 1 <= (totalContacts / perPage).ceil()}');
      emit(const ContactsFetchState.loadingMore());
      try {
        final response =
            await ApiHelper.getClient().getContact(page + 1, perPage);
        if (response.status == 'success') {
          page++;
          _contact.addAll(response.data.items);

          emit(ContactsFetchState.success(_contact));
        } else {
          emit(const ContactsFetchState.loadingMoreError('No more data'));
        }
      } on SocketException {
        emit(const ContactsFetchState.loadingMoreError(
            'No Internet Connection'));
      } catch (e) {
        print(e.toString());

        emit(
          ContactsFetchState.loadingMoreError(
            e.toString().contains('401')
                ? 'Incorrect Password'
                : 'Your OTP code has expired',
          ),
        );
      }
    }
  }
}
