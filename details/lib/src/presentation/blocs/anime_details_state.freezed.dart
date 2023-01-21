// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeDetailsState {
  AnimeDetailsStatus get status => throw _privateConstructorUsedError;
  Anime? get anime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeDetailsStateCopyWith<AnimeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeDetailsStateCopyWith<$Res> {
  factory $AnimeDetailsStateCopyWith(
          AnimeDetailsState value, $Res Function(AnimeDetailsState) then) =
      _$AnimeDetailsStateCopyWithImpl<$Res, AnimeDetailsState>;
  @useResult
  $Res call({AnimeDetailsStatus status, Anime? anime});

  $AnimeCopyWith<$Res>? get anime;
}

/// @nodoc
class _$AnimeDetailsStateCopyWithImpl<$Res, $Val extends AnimeDetailsState>
    implements $AnimeDetailsStateCopyWith<$Res> {
  _$AnimeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? anime = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimeDetailsStatus,
      anime: freezed == anime
          ? _value.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as Anime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeCopyWith<$Res>? get anime {
    if (_value.anime == null) {
      return null;
    }

    return $AnimeCopyWith<$Res>(_value.anime!, (value) {
      return _then(_value.copyWith(anime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeDetailsStateCopyWith<$Res>
    implements $AnimeDetailsStateCopyWith<$Res> {
  factory _$$_AnimeDetailsStateCopyWith(_$_AnimeDetailsState value,
          $Res Function(_$_AnimeDetailsState) then) =
      __$$_AnimeDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeDetailsStatus status, Anime? anime});

  @override
  $AnimeCopyWith<$Res>? get anime;
}

/// @nodoc
class __$$_AnimeDetailsStateCopyWithImpl<$Res>
    extends _$AnimeDetailsStateCopyWithImpl<$Res, _$_AnimeDetailsState>
    implements _$$_AnimeDetailsStateCopyWith<$Res> {
  __$$_AnimeDetailsStateCopyWithImpl(
      _$_AnimeDetailsState _value, $Res Function(_$_AnimeDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? anime = freezed,
  }) {
    return _then(_$_AnimeDetailsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimeDetailsStatus,
      anime: freezed == anime
          ? _value.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as Anime?,
    ));
  }
}

/// @nodoc

class _$_AnimeDetailsState implements _AnimeDetailsState {
  const _$_AnimeDetailsState(
      {this.status = AnimeDetailsStatus.loading, this.anime});

  @override
  @JsonKey()
  final AnimeDetailsStatus status;
  @override
  final Anime? anime;

  @override
  String toString() {
    return 'AnimeDetailsState(status: $status, anime: $anime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeDetailsState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.anime, anime) || other.anime == anime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, anime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeDetailsStateCopyWith<_$_AnimeDetailsState> get copyWith =>
      __$$_AnimeDetailsStateCopyWithImpl<_$_AnimeDetailsState>(
          this, _$identity);
}

abstract class _AnimeDetailsState implements AnimeDetailsState {
  const factory _AnimeDetailsState(
      {final AnimeDetailsStatus status,
      final Anime? anime}) = _$_AnimeDetailsState;

  @override
  AnimeDetailsStatus get status;
  @override
  Anime? get anime;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeDetailsStateCopyWith<_$_AnimeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
