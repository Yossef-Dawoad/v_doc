// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSpecializations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSpecializations value) getSpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSpecializations value)? getSpecializations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSpecializations value)? getSpecializations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DoctorEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSpecializations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSpecializations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSpecializations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSpecializations value) getSpecializations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSpecializations value)? getSpecializations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSpecializations value)? getSpecializations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DoctorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetSpecializationsImplCopyWith<$Res> {
  factory _$$GetSpecializationsImplCopyWith(_$GetSpecializationsImpl value,
          $Res Function(_$GetSpecializationsImpl) then) =
      __$$GetSpecializationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSpecializationsImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetSpecializationsImpl>
    implements _$$GetSpecializationsImplCopyWith<$Res> {
  __$$GetSpecializationsImplCopyWithImpl(_$GetSpecializationsImpl _value,
      $Res Function(_$GetSpecializationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSpecializationsImpl implements GetSpecializations {
  const _$GetSpecializationsImpl();

  @override
  String toString() {
    return 'DoctorEvent.getSpecializations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSpecializationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSpecializations,
  }) {
    return getSpecializations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSpecializations,
  }) {
    return getSpecializations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSpecializations,
    required TResult orElse(),
  }) {
    if (getSpecializations != null) {
      return getSpecializations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetSpecializations value) getSpecializations,
  }) {
    return getSpecializations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetSpecializations value)? getSpecializations,
  }) {
    return getSpecializations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetSpecializations value)? getSpecializations,
    required TResult orElse(),
  }) {
    if (getSpecializations != null) {
      return getSpecializations(this);
    }
    return orElse();
  }
}

abstract class GetSpecializations implements DoctorEvent {
  const factory GetSpecializations() = _$GetSpecializationsImpl;
}

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpecializationsResponse specializations)
        specializationsSuccess,
    required TResult Function(String msg) specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult? Function(String msg)? specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult Function(String msg)? specializationsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SpecializationsSuccess value)
        specializationsSuccess,
    required TResult Function(SpecializationsError value) specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult? Function(SpecializationsError value)? specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult Function(SpecializationsError value)? specializationsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DoctorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpecializationsResponse specializations)
        specializationsSuccess,
    required TResult Function(String msg) specializationsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult? Function(String msg)? specializationsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult Function(String msg)? specializationsError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(SpecializationsSuccess value)
        specializationsSuccess,
    required TResult Function(SpecializationsError value) specializationsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult? Function(SpecializationsError value)? specializationsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult Function(SpecializationsError value)? specializationsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoctorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DoctorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpecializationsResponse specializations)
        specializationsSuccess,
    required TResult Function(String msg) specializationsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult? Function(String msg)? specializationsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult Function(String msg)? specializationsError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(SpecializationsSuccess value)
        specializationsSuccess,
    required TResult Function(SpecializationsError value) specializationsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult? Function(SpecializationsError value)? specializationsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult Function(SpecializationsError value)? specializationsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DoctorState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SpecializationsSuccessImplCopyWith<$Res> {
  factory _$$SpecializationsSuccessImplCopyWith(
          _$SpecializationsSuccessImpl value,
          $Res Function(_$SpecializationsSuccessImpl) then) =
      __$$SpecializationsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecializationsResponse specializations});
}

/// @nodoc
class __$$SpecializationsSuccessImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$SpecializationsSuccessImpl>
    implements _$$SpecializationsSuccessImplCopyWith<$Res> {
  __$$SpecializationsSuccessImplCopyWithImpl(
      _$SpecializationsSuccessImpl _value,
      $Res Function(_$SpecializationsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializations = null,
  }) {
    return _then(_$SpecializationsSuccessImpl(
      null == specializations
          ? _value.specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as SpecializationsResponse,
    ));
  }
}

/// @nodoc

class _$SpecializationsSuccessImpl implements SpecializationsSuccess {
  const _$SpecializationsSuccessImpl(this.specializations);

  @override
  final SpecializationsResponse specializations;

  @override
  String toString() {
    return 'DoctorState.specializationsSuccess(specializations: $specializations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsSuccessImpl &&
            (identical(other.specializations, specializations) ||
                other.specializations == specializations));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsSuccessImplCopyWith<_$SpecializationsSuccessImpl>
      get copyWith => __$$SpecializationsSuccessImplCopyWithImpl<
          _$SpecializationsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpecializationsResponse specializations)
        specializationsSuccess,
    required TResult Function(String msg) specializationsError,
  }) {
    return specializationsSuccess(specializations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult? Function(String msg)? specializationsError,
  }) {
    return specializationsSuccess?.call(specializations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult Function(String msg)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(specializations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SpecializationsSuccess value)
        specializationsSuccess,
    required TResult Function(SpecializationsError value) specializationsError,
  }) {
    return specializationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult? Function(SpecializationsError value)? specializationsError,
  }) {
    return specializationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult Function(SpecializationsError value)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationsSuccess implements DoctorState {
  const factory SpecializationsSuccess(
          final SpecializationsResponse specializations) =
      _$SpecializationsSuccessImpl;

  SpecializationsResponse get specializations;
  @JsonKey(ignore: true)
  _$$SpecializationsSuccessImplCopyWith<_$SpecializationsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationsErrorImplCopyWith<$Res> {
  factory _$$SpecializationsErrorImplCopyWith(_$SpecializationsErrorImpl value,
          $Res Function(_$SpecializationsErrorImpl) then) =
      __$$SpecializationsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$SpecializationsErrorImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$SpecializationsErrorImpl>
    implements _$$SpecializationsErrorImplCopyWith<$Res> {
  __$$SpecializationsErrorImplCopyWithImpl(_$SpecializationsErrorImpl _value,
      $Res Function(_$SpecializationsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$SpecializationsErrorImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SpecializationsErrorImpl implements SpecializationsError {
  const _$SpecializationsErrorImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'DoctorState.specializationsError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsErrorImplCopyWith<_$SpecializationsErrorImpl>
      get copyWith =>
          __$$SpecializationsErrorImplCopyWithImpl<_$SpecializationsErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SpecializationsResponse specializations)
        specializationsSuccess,
    required TResult Function(String msg) specializationsError,
  }) {
    return specializationsError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult? Function(String msg)? specializationsError,
  }) {
    return specializationsError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SpecializationsResponse specializations)?
        specializationsSuccess,
    TResult Function(String msg)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SpecializationsSuccess value)
        specializationsSuccess,
    required TResult Function(SpecializationsError value) specializationsError,
  }) {
    return specializationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult? Function(SpecializationsError value)? specializationsError,
  }) {
    return specializationsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SpecializationsSuccess value)? specializationsSuccess,
    TResult Function(SpecializationsError value)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(this);
    }
    return orElse();
  }
}

abstract class SpecializationsError implements DoctorState {
  const factory SpecializationsError(final String msg) =
      _$SpecializationsErrorImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$SpecializationsErrorImplCopyWith<_$SpecializationsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
