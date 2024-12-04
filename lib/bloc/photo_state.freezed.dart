// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UnsplashPhoto> photos) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashPhoto> photos)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashPhoto> photos)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhotoInitial value) initial,
    required TResult Function(PhotoLoading value) loading,
    required TResult Function(PhotoLoaded value) loaded,
    required TResult Function(PhotoError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoInitial value)? initial,
    TResult? Function(PhotoLoading value)? loading,
    TResult? Function(PhotoLoaded value)? loaded,
    TResult? Function(PhotoError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoInitial value)? initial,
    TResult Function(PhotoLoading value)? loading,
    TResult Function(PhotoLoaded value)? loaded,
    TResult Function(PhotoError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res, PhotoState>;
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res, $Val extends PhotoState>
    implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PhotoInitialImplCopyWith<$Res> {
  factory _$$PhotoInitialImplCopyWith(
          _$PhotoInitialImpl value, $Res Function(_$PhotoInitialImpl) then) =
      __$$PhotoInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoInitialImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoInitialImpl>
    implements _$$PhotoInitialImplCopyWith<$Res> {
  __$$PhotoInitialImplCopyWithImpl(
      _$PhotoInitialImpl _value, $Res Function(_$PhotoInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PhotoInitialImpl implements PhotoInitial {
  const _$PhotoInitialImpl();

  @override
  String toString() {
    return 'PhotoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotoInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UnsplashPhoto> photos) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashPhoto> photos)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashPhoto> photos)? loaded,
    TResult Function()? error,
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
    required TResult Function(PhotoInitial value) initial,
    required TResult Function(PhotoLoading value) loading,
    required TResult Function(PhotoLoaded value) loaded,
    required TResult Function(PhotoError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoInitial value)? initial,
    TResult? Function(PhotoLoading value)? loading,
    TResult? Function(PhotoLoaded value)? loaded,
    TResult? Function(PhotoError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoInitial value)? initial,
    TResult Function(PhotoLoading value)? loading,
    TResult Function(PhotoLoaded value)? loaded,
    TResult Function(PhotoError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PhotoInitial implements PhotoState {
  const factory PhotoInitial() = _$PhotoInitialImpl;
}

/// @nodoc
abstract class _$$PhotoLoadingImplCopyWith<$Res> {
  factory _$$PhotoLoadingImplCopyWith(
          _$PhotoLoadingImpl value, $Res Function(_$PhotoLoadingImpl) then) =
      __$$PhotoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoLoadingImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoLoadingImpl>
    implements _$$PhotoLoadingImplCopyWith<$Res> {
  __$$PhotoLoadingImplCopyWithImpl(
      _$PhotoLoadingImpl _value, $Res Function(_$PhotoLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PhotoLoadingImpl implements PhotoLoading {
  const _$PhotoLoadingImpl();

  @override
  String toString() {
    return 'PhotoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UnsplashPhoto> photos) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashPhoto> photos)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashPhoto> photos)? loaded,
    TResult Function()? error,
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
    required TResult Function(PhotoInitial value) initial,
    required TResult Function(PhotoLoading value) loading,
    required TResult Function(PhotoLoaded value) loaded,
    required TResult Function(PhotoError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoInitial value)? initial,
    TResult? Function(PhotoLoading value)? loading,
    TResult? Function(PhotoLoaded value)? loaded,
    TResult? Function(PhotoError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoInitial value)? initial,
    TResult Function(PhotoLoading value)? loading,
    TResult Function(PhotoLoaded value)? loaded,
    TResult Function(PhotoError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PhotoLoading implements PhotoState {
  const factory PhotoLoading() = _$PhotoLoadingImpl;
}

/// @nodoc
abstract class _$$PhotoLoadedImplCopyWith<$Res> {
  factory _$$PhotoLoadedImplCopyWith(
          _$PhotoLoadedImpl value, $Res Function(_$PhotoLoadedImpl) then) =
      __$$PhotoLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnsplashPhoto> photos});
}

/// @nodoc
class __$$PhotoLoadedImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoLoadedImpl>
    implements _$$PhotoLoadedImplCopyWith<$Res> {
  __$$PhotoLoadedImplCopyWithImpl(
      _$PhotoLoadedImpl _value, $Res Function(_$PhotoLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$PhotoLoadedImpl(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<UnsplashPhoto>,
    ));
  }
}

/// @nodoc

class _$PhotoLoadedImpl implements PhotoLoaded {
  const _$PhotoLoadedImpl(final List<UnsplashPhoto> photos) : _photos = photos;

  final List<UnsplashPhoto> _photos;
  @override
  List<UnsplashPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PhotoState.loaded(photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoLoadedImpl &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoLoadedImplCopyWith<_$PhotoLoadedImpl> get copyWith =>
      __$$PhotoLoadedImplCopyWithImpl<_$PhotoLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UnsplashPhoto> photos) loaded,
    required TResult Function() error,
  }) {
    return loaded(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashPhoto> photos)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashPhoto> photos)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhotoInitial value) initial,
    required TResult Function(PhotoLoading value) loading,
    required TResult Function(PhotoLoaded value) loaded,
    required TResult Function(PhotoError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoInitial value)? initial,
    TResult? Function(PhotoLoading value)? loading,
    TResult? Function(PhotoLoaded value)? loaded,
    TResult? Function(PhotoError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoInitial value)? initial,
    TResult Function(PhotoLoading value)? loading,
    TResult Function(PhotoLoaded value)? loaded,
    TResult Function(PhotoError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PhotoLoaded implements PhotoState {
  const factory PhotoLoaded(final List<UnsplashPhoto> photos) =
      _$PhotoLoadedImpl;

  List<UnsplashPhoto> get photos;

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoLoadedImplCopyWith<_$PhotoLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoErrorImplCopyWith<$Res> {
  factory _$$PhotoErrorImplCopyWith(
          _$PhotoErrorImpl value, $Res Function(_$PhotoErrorImpl) then) =
      __$$PhotoErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoErrorImplCopyWithImpl<$Res>
    extends _$PhotoStateCopyWithImpl<$Res, _$PhotoErrorImpl>
    implements _$$PhotoErrorImplCopyWith<$Res> {
  __$$PhotoErrorImplCopyWithImpl(
      _$PhotoErrorImpl _value, $Res Function(_$PhotoErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PhotoErrorImpl implements PhotoError {
  const _$PhotoErrorImpl();

  @override
  String toString() {
    return 'PhotoState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotoErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UnsplashPhoto> photos) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UnsplashPhoto> photos)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UnsplashPhoto> photos)? loaded,
    TResult Function()? error,
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
    required TResult Function(PhotoInitial value) initial,
    required TResult Function(PhotoLoading value) loading,
    required TResult Function(PhotoLoaded value) loaded,
    required TResult Function(PhotoError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhotoInitial value)? initial,
    TResult? Function(PhotoLoading value)? loading,
    TResult? Function(PhotoLoaded value)? loaded,
    TResult? Function(PhotoError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhotoInitial value)? initial,
    TResult Function(PhotoLoading value)? loading,
    TResult Function(PhotoLoaded value)? loaded,
    TResult Function(PhotoError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PhotoError implements PhotoState {
  const factory PhotoError() = _$PhotoErrorImpl;
}
