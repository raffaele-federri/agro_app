import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../network/api/api_helper.dart';
import '../../../network/models/contacts/contacts_response.dart';

part 'create_complain_event.dart';

part 'create_complain_state.dart';

part 'create_complain_bloc.freezed.dart';

class CreateComplainBloc
    extends Bloc<CreateComplainEvent, CreateComplainState> {
  String link = '';

  CreateComplainBloc() : super(const CreateComplainState.initial()) {
    on<CreateComplainEvent>((event, emit) async {
      await event.when(
        sendNotifications: (title, description, imageUrl) =>
            _onSendNotifications(emit, title, description, imageUrl),
        uploadImageToServer: (file) => _onUploadToServer(file, emit),
      );
    });
  }

  Future<void> _onSendNotifications(Emitter<CreateComplainState> emit,
      String title, String description, String imageUrl) async {
    emit(const CreateComplainState.loading());

    final jsonMap = {
      "user_id": 12,
      "complain_status_id": 3,
      "title": title,
      "description": description,
      "image": link,
      "rate": 3,
      "action_date": DateTime.now().toString(),
    };
    final response = await ApiHelper.getClient().createComplain(jsonMap);
    if (response.status == 'success') {
      emit(const CreateComplainState.success(''));
    } else {
      emit(const CreateComplainState.error());
    }
  }

  Future<void> _onUploadToServer(
      XFile file, Emitter<CreateComplainState> emit) async {
    emit(const CreateComplainState.loading());

    final response = await ApiHelper.getClient().uploadMedia(File(file.path));
    if (response.isNotEmpty) {
      link = response;
      emit(CreateComplainState.success(file.name));
    } else {
      emit(const CreateComplainState.error());
    }
  }
}
