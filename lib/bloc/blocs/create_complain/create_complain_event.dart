part of 'create_complain_bloc.dart';

@freezed
class CreateComplainEvent with _$CreateComplainEvent {
  const factory CreateComplainEvent.sendNotifications(String title ,String description , String imageUrl) = _sendNotifications;
  const factory CreateComplainEvent.uploadImageToServer(XFile file) = _uploadImageToServer;
}
