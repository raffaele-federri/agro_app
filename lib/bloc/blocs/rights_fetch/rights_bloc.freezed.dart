// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RightsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightsEventCopyWith<$Res> {
  factory $RightsEventCopyWith(
          RightsEvent value, $Res Function(RightsEvent) then) =
      _$RightsEventCopyWithImpl<$Res, RightsEvent>;
}

/// @nodoc
class _$RightsEventCopyWithImpl<$Res, $Val extends RightsEvent>
    implements $RightsEventCopyWith<$Res> {
  _$RightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res>
    extends _$RightsEventCopyWithImpl<$Res, _$_Fetch>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'RightsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchMore,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchMore,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements RightsEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_FetchMoreCopyWith<$Res> {
  factory _$$_FetchMoreCopyWith(
          _$_FetchMore value, $Res Function(_$_FetchMore) then) =
      __$$_FetchMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchMoreCopyWithImpl<$Res>
    extends _$RightsEventCopyWithImpl<$Res, _$_FetchMore>
    implements _$$_FetchMoreCopyWith<$Res> {
  __$$_FetchMoreCopyWithImpl(
      _$_FetchMore _value, $Res Function(_$_FetchMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchMore implements _FetchMore {
  const _$_FetchMore();

  @override
  String toString() {
    return 'RightsEvent.fetchMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements RightsEvent {
  const factory _FetchMore() = _$_FetchMore;
}

/// @nodoc
mixin _$RightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightsStateCopyWith<$Res> {
  factory $RightsStateCopyWith(
          RightsState value, $Res Function(RightsState) then) =
      _$RightsStateCopyWithImpl<$Res, RightsState>;
}

/// @nodoc
class _$RightsStateCopyWithImpl<$Res, $Val extends RightsState>
    implements $RightsStateCopyWith<$Res> {
  _$RightsStateCopyWithImpl(this._value, this._then);

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
    extends _$RightsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RightsState.initial()';
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
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
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
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RightsState {
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
    extends _$RightsStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'RightsState.loading()';
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
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
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
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements RightsState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_successCopyWith<$Res> {
  factory _$$_successCopyWith(
          _$_success value, $Res Function(_$_success) then) =
      __$$_successCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Right> fetchedRights});
}

/// @nodoc
class __$$_successCopyWithImpl<$Res>
    extends _$RightsStateCopyWithImpl<$Res, _$_success>
    implements _$$_successCopyWith<$Res> {
  __$$_successCopyWithImpl(_$_success _value, $Res Function(_$_success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchedRights = null,
  }) {
    return _then(_$_success(
      null == fetchedRights
          ? _value._fetchedRights
          : fetchedRights // ignore: cast_nullable_to_non_nullable
              as List<Right>,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(final List<Right> fetchedRights)
      : _fetchedRights = fetchedRights;

  final List<Right> _fetchedRights;
  @override
  List<Right> get fetchedRights {
    if (_fetchedRights is EqualUnmodifiableListView) return _fetchedRights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchedRights);
  }

  @override
  String toString() {
    return 'RightsState.success(fetchedRights: $fetchedRights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_success &&
            const DeepCollectionEquality()
                .equals(other._fetchedRights, _fetchedRights));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_fetchedRights));

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
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return success(fetchedRights);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return success?.call(fetchedRights);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(fetchedRights);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements RightsState {
  const factory _success(final List<Right> fetchedRights) = _$_success;

  List<Right> get fetchedRights;
  @JsonKey(ignore: true)
  _$$_successCopyWith<_$_success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_loadMoreLoadingCopyWith<$Res> {
  factory _$$_loadMoreLoadingCopyWith(
          _$_loadMoreLoading value, $Res Function(_$_loadMoreLoading) then) =
      __$$_loadMoreLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadMoreLoadingCopyWithImpl<$Res>
    extends _$RightsStateCopyWithImpl<$Res, _$_loadMoreLoading>
    implements _$$_loadMoreLoadingCopyWith<$Res> {
  __$$_loadMoreLoadingCopyWithImpl(
      _$_loadMoreLoading _value, $Res Function(_$_loadMoreLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadMoreLoading implements _loadMoreLoading {
  const _$_loadMoreLoading();

  @override
  String toString() {
    return 'RightsState.loadingMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadMoreLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return loadingMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return loadingMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _loadMoreLoading implements RightsState {
  const factory _loadMoreLoading() = _$_loadMoreLoading;
}

/// @nodoc
abstract class _$$_loadingMoreErrorCopyWith<$Res> {
  factory _$$_loadingMoreErrorCopyWith(
          _$_loadingMoreError value, $Res Function(_$_loadingMoreError) then) =
      __$$_loadingMoreErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_loadingMoreErrorCopyWithImpl<$Res>
    extends _$RightsStateCopyWithImpl<$Res, _$_loadingMoreError>
    implements _$$_loadingMoreErrorCopyWith<$Res> {
  __$$_loadingMoreErrorCopyWithImpl(
      _$_loadingMoreError _value, $Res Function(_$_loadingMoreError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_loadingMoreError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_loadingMoreError implements _loadingMoreError {
  const _$_loadingMoreError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RightsState.loadingMoreError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loadingMoreError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadingMoreErrorCopyWith<_$_loadingMoreError> get copyWith =>
      __$$_loadingMoreErrorCopyWithImpl<_$_loadingMoreError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return loadingMoreError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return loadingMoreError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreError != null) {
      return loadingMoreError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return loadingMoreError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return loadingMoreError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loadingMoreError != null) {
      return loadingMoreError(this);
    }
    return orElse();
  }
}

abstract class _loadingMoreError implements RightsState {
  const factory _loadingMoreError(final String message) = _$_loadingMoreError;

  String get message;
  @JsonKey(ignore: true)
  _$$_loadingMoreErrorCopyWith<_$_loadingMoreError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorCopyWith<$Res> {
  factory _$$_errorCopyWith(_$_error value, $Res Function(_$_error) then) =
      __$$_errorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_errorCopyWithImpl<$Res>
    extends _$RightsStateCopyWithImpl<$Res, _$_error>
    implements _$$_errorCopyWith<$Res> {
  __$$_errorCopyWithImpl(_$_error _value, $Res Function(_$_error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RightsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_errorCopyWith<_$_error> get copyWith =>
      __$$_errorCopyWithImpl<_$_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Right> fetchedRights) success,
    required TResult Function() loadingMore,
    required TResult Function(String message) loadingMoreError,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Right> fetchedRights)? success,
    TResult? Function()? loadingMore,
    TResult? Function(String message)? loadingMoreError,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Right> fetchedRights)? success,
    TResult Function()? loadingMore,
    TResult Function(String message)? loadingMoreError,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_loadMoreLoading value) loadingMore,
    required TResult Function(_loadingMoreError value) loadingMoreError,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_loadMoreLoading value)? loadingMore,
    TResult? Function(_loadingMoreError value)? loadingMoreError,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_loadMoreLoading value)? loadingMore,
    TResult Function(_loadingMoreError value)? loadingMoreError,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements RightsState {
  const factory _error(final String message) = _$_error;

  String get message;
  @JsonKey(ignore: true)
  _$$_errorCopyWith<_$_error> get copyWith =>
      throw _privateConstructorUsedError;
}
