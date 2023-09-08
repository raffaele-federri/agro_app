// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_complain_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateComplainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String imageUrl)
        sendNotifications,
    required TResult Function(XFile file) uploadImageToServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult? Function(XFile file)? uploadImageToServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult Function(XFile file)? uploadImageToServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendNotifications value) sendNotifications,
    required TResult Function(_uploadImageToServer value) uploadImageToServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendNotifications value)? sendNotifications,
    TResult? Function(_uploadImageToServer value)? uploadImageToServer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendNotifications value)? sendNotifications,
    TResult Function(_uploadImageToServer value)? uploadImageToServer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComplainEventCopyWith<$Res> {
  factory $CreateComplainEventCopyWith(
          CreateComplainEvent value, $Res Function(CreateComplainEvent) then) =
      _$CreateComplainEventCopyWithImpl<$Res, CreateComplainEvent>;
}

/// @nodoc
class _$CreateComplainEventCopyWithImpl<$Res, $Val extends CreateComplainEvent>
    implements $CreateComplainEventCopyWith<$Res> {
  _$CreateComplainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_sendNotificationsCopyWith<$Res> {
  factory _$$_sendNotificationsCopyWith(_$_sendNotifications value,
          $Res Function(_$_sendNotifications) then) =
      __$$_sendNotificationsCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String imageUrl});
}

/// @nodoc
class __$$_sendNotificationsCopyWithImpl<$Res>
    extends _$CreateComplainEventCopyWithImpl<$Res, _$_sendNotifications>
    implements _$$_sendNotificationsCopyWith<$Res> {
  __$$_sendNotificationsCopyWithImpl(
      _$_sendNotifications _value, $Res Function(_$_sendNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? imageUrl = null,
  }) {
    return _then(_$_sendNotifications(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_sendNotifications implements _sendNotifications {
  const _$_sendNotifications(this.title, this.description, this.imageUrl);

  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CreateComplainEvent.sendNotifications(title: $title, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sendNotifications &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_sendNotificationsCopyWith<_$_sendNotifications> get copyWith =>
      __$$_sendNotificationsCopyWithImpl<_$_sendNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String imageUrl)
        sendNotifications,
    required TResult Function(XFile file) uploadImageToServer,
  }) {
    return sendNotifications(title, description, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult? Function(XFile file)? uploadImageToServer,
  }) {
    return sendNotifications?.call(title, description, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult Function(XFile file)? uploadImageToServer,
    required TResult orElse(),
  }) {
    if (sendNotifications != null) {
      return sendNotifications(title, description, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendNotifications value) sendNotifications,
    required TResult Function(_uploadImageToServer value) uploadImageToServer,
  }) {
    return sendNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendNotifications value)? sendNotifications,
    TResult? Function(_uploadImageToServer value)? uploadImageToServer,
  }) {
    return sendNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendNotifications value)? sendNotifications,
    TResult Function(_uploadImageToServer value)? uploadImageToServer,
    required TResult orElse(),
  }) {
    if (sendNotifications != null) {
      return sendNotifications(this);
    }
    return orElse();
  }
}

abstract class _sendNotifications implements CreateComplainEvent {
  const factory _sendNotifications(
          final String title, final String description, final String imageUrl) =
      _$_sendNotifications;

  String get title;
  String get description;
  String get imageUrl;
  @JsonKey(ignore: true)
  _$$_sendNotificationsCopyWith<_$_sendNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_uploadImageToServerCopyWith<$Res> {
  factory _$$_uploadImageToServerCopyWith(_$_uploadImageToServer value,
          $Res Function(_$_uploadImageToServer) then) =
      __$$_uploadImageToServerCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile file});
}

/// @nodoc
class __$$_uploadImageToServerCopyWithImpl<$Res>
    extends _$CreateComplainEventCopyWithImpl<$Res, _$_uploadImageToServer>
    implements _$$_uploadImageToServerCopyWith<$Res> {
  __$$_uploadImageToServerCopyWithImpl(_$_uploadImageToServer _value,
      $Res Function(_$_uploadImageToServer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_uploadImageToServer(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$_uploadImageToServer implements _uploadImageToServer {
  const _$_uploadImageToServer(this.file);

  @override
  final XFile file;

  @override
  String toString() {
    return 'CreateComplainEvent.uploadImageToServer(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_uploadImageToServer &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_uploadImageToServerCopyWith<_$_uploadImageToServer> get copyWith =>
      __$$_uploadImageToServerCopyWithImpl<_$_uploadImageToServer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String description, String imageUrl)
        sendNotifications,
    required TResult Function(XFile file) uploadImageToServer,
  }) {
    return uploadImageToServer(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult? Function(XFile file)? uploadImageToServer,
  }) {
    return uploadImageToServer?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String description, String imageUrl)?
        sendNotifications,
    TResult Function(XFile file)? uploadImageToServer,
    required TResult orElse(),
  }) {
    if (uploadImageToServer != null) {
      return uploadImageToServer(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendNotifications value) sendNotifications,
    required TResult Function(_uploadImageToServer value) uploadImageToServer,
  }) {
    return uploadImageToServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendNotifications value)? sendNotifications,
    TResult? Function(_uploadImageToServer value)? uploadImageToServer,
  }) {
    return uploadImageToServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendNotifications value)? sendNotifications,
    TResult Function(_uploadImageToServer value)? uploadImageToServer,
    required TResult orElse(),
  }) {
    if (uploadImageToServer != null) {
      return uploadImageToServer(this);
    }
    return orElse();
  }
}

abstract class _uploadImageToServer implements CreateComplainEvent {
  const factory _uploadImageToServer(final XFile file) = _$_uploadImageToServer;

  XFile get file;
  @JsonKey(ignore: true)
  _$$_uploadImageToServerCopyWith<_$_uploadImageToServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateComplainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComplainStateCopyWith<$Res> {
  factory $CreateComplainStateCopyWith(
          CreateComplainState value, $Res Function(CreateComplainState) then) =
      _$CreateComplainStateCopyWithImpl<$Res, CreateComplainState>;
}

/// @nodoc
class _$CreateComplainStateCopyWithImpl<$Res, $Val extends CreateComplainState>
    implements $CreateComplainStateCopyWith<$Res> {
  _$CreateComplainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreateComplainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateComplainState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'CreateComplainState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements CreateComplainState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_error>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_error implements _error {
  const _$_error();

  @override
  String toString() {
    return 'CreateComplainState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements CreateComplainState {
  const factory _error() = _$_error;
}

/// @nodoc
abstract class _$$_successCopyWith<$Res> {
  factory _$$_successCopyWith(
          _$_success value, $Res Function(_$_success) then) =
      __$$_successCopyWithImpl<$Res>;
  @useResult
  $Res call({String response});
}

/// @nodoc
class __$$_successCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_success>
    implements _$$_successCopyWith<$Res> {
  __$$_successCopyWithImpl(_$_success _value, $Res Function(_$_success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_success(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(this.response);

  @override
  final String response;

  @override
  String toString() {
    return 'CreateComplainState.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_success &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_successCopyWith<_$_success> get copyWith =>
      __$$_successCopyWithImpl<_$_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements CreateComplainState {
  const factory _success(final String response) = _$_success;

  String get response;
  @JsonKey(ignore: true)
  _$$_successCopyWith<_$_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_clearCopyWith<$Res> {
  factory _$$_clearCopyWith(_$_clear value, $Res Function(_$_clear) then) =
      __$$_clearCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_clearCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_clear>
    implements _$$_clearCopyWith<$Res> {
  __$$_clearCopyWithImpl(_$_clear _value, $Res Function(_$_clear) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_clear implements _clear {
  const _$_clear();

  @override
  String toString() {
    return 'CreateComplainState.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _clear implements CreateComplainState {
  const factory _clear() = _$_clear;
}

/// @nodoc
abstract class _$$_formDataHasDataCopyWith<$Res> {
  factory _$$_formDataHasDataCopyWith(
          _$_formDataHasData value, $Res Function(_$_formDataHasData) then) =
      __$$_formDataHasDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_formDataHasDataCopyWithImpl<$Res>
    extends _$CreateComplainStateCopyWithImpl<$Res, _$_formDataHasData>
    implements _$$_formDataHasDataCopyWith<$Res> {
  __$$_formDataHasDataCopyWithImpl(
      _$_formDataHasData _value, $Res Function(_$_formDataHasData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_formDataHasData implements _formDataHasData {
  const _$_formDataHasData();

  @override
  String toString() {
    return 'CreateComplainState.fileHasData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_formDataHasData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(String response) success,
    required TResult Function() clear,
    required TResult Function() fileHasData,
  }) {
    return fileHasData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(String response)? success,
    TResult? Function()? clear,
    TResult? Function()? fileHasData,
  }) {
    return fileHasData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(String response)? success,
    TResult Function()? clear,
    TResult Function()? fileHasData,
    required TResult orElse(),
  }) {
    if (fileHasData != null) {
      return fileHasData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
    required TResult Function(_clear value) clear,
    required TResult Function(_formDataHasData value) fileHasData,
  }) {
    return fileHasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_error value)? error,
    TResult? Function(_success value)? success,
    TResult? Function(_clear value)? clear,
    TResult? Function(_formDataHasData value)? fileHasData,
  }) {
    return fileHasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    TResult Function(_clear value)? clear,
    TResult Function(_formDataHasData value)? fileHasData,
    required TResult orElse(),
  }) {
    if (fileHasData != null) {
      return fileHasData(this);
    }
    return orElse();
  }
}

abstract class _formDataHasData implements CreateComplainState {
  const factory _formDataHasData() = _$_formDataHasData;
}
