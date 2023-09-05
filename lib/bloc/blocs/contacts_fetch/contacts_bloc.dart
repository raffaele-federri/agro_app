import 'dart:io';

import 'package:agro_app/network/models/contacts/contact.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../network/api/api_helper.dart';

part 'contacts_event.dart';

part 'contacts_state.dart';

part 'contacts_bloc.freezed.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  int page = 1;
  int totalContacts = 0;
  final perPage = 6;
  final List<Contact> _contact = [];

  ContactsBloc() : super(const ContactsState.initial()) {
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

  Future<void> _fetch(Emitter<ContactsState> emit) async {
    emit(const ContactsState.loading());

    try {
      final response = await ApiHelper.getClient().getContact(page, perPage);
      if (response.status == 'success') {
        _contact.clear();
        _contact.addAll(response.data.items);
        totalContacts = response.data.total;
        emit(ContactsState.success(_contact));
      }
    } on SocketException {
      emit(const ContactsState.error('No Internet Connection'));
    } catch (e) {
      print(e.toString());

      emit(
        ContactsState.error(
          e.toString().contains('401')
              ? 'Incorrect Password'
              : 'Your OTP code has expired',
        ),
      );
    }
  }

  Future<void> _fetchMore(Emitter<ContactsState> emit) async {
    if (page + 1 <= (totalContacts / perPage).ceil()) {
      emit(const ContactsState.loadingMore());
      try {
        final response =
            await ApiHelper.getClient().getContact(page + 1, perPage);
        if (response.status == 'success') {
          page++;
          _contact.addAll(response.data.items);

          emit(ContactsState.success(_contact));
        } else {
          emit(const ContactsState.loadingMoreError('No more data'));
        }
      } on SocketException {
        emit(const ContactsState.loadingMoreError('No Internet Connection'));
      } catch (e) {
        print(e.toString());

        emit(
          ContactsState.loadingMoreError(
            e.toString().contains('401')
                ? 'Incorrect Password'
                : 'Your OTP code has expired',
          ),
        );
      }
    }
  }
}
