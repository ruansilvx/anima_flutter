// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_season.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeSeason {
  AnimeSeasonType get season => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeSeasonCopyWith<AnimeSeason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeSeasonCopyWith<$Res> {
  factory $AnimeSeasonCopyWith(
          AnimeSeason value, $Res Function(AnimeSeason) then) =
      _$AnimeSeasonCopyWithImpl<$Res, AnimeSeason>;
  @useResult
  $Res call({AnimeSeasonType season, int? year});
}

/// @nodoc
class _$AnimeSeasonCopyWithImpl<$Res, $Val extends AnimeSeason>
    implements $AnimeSeasonCopyWith<$Res> {
  _$AnimeSeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeasonType,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeSeasonCopyWith<$Res>
    implements $AnimeSeasonCopyWith<$Res> {
  factory _$$_AnimeSeasonCopyWith(
          _$_AnimeSeason value, $Res Function(_$_AnimeSeason) then) =
      __$$_AnimeSeasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnimeSeasonType season, int? year});
}

/// @nodoc
class __$$_AnimeSeasonCopyWithImpl<$Res>
    extends _$AnimeSeasonCopyWithImpl<$Res, _$_AnimeSeason>
    implements _$$_AnimeSeasonCopyWith<$Res> {
  __$$_AnimeSeasonCopyWithImpl(
      _$_AnimeSeason _value, $Res Function(_$_AnimeSeason) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? year = freezed,
  }) {
    return _then(_$_AnimeSeason(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeasonType,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AnimeSeason with DiagnosticableTreeMixin implements _AnimeSeason {
  const _$_AnimeSeason({required this.season, this.year});

  @override
  final AnimeSeasonType season;
  @override
  final int? year;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnimeSeason(season: $season, year: $year)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnimeSeason'))
      ..add(DiagnosticsProperty('season', season))
      ..add(DiagnosticsProperty('year', year));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeSeason &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, season, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeSeasonCopyWith<_$_AnimeSeason> get copyWith =>
      __$$_AnimeSeasonCopyWithImpl<_$_AnimeSeason>(this, _$identity);
}

abstract class _AnimeSeason implements AnimeSeason {
  const factory _AnimeSeason(
      {required final AnimeSeasonType season,
      final int? year}) = _$_AnimeSeason;

  @override
  AnimeSeasonType get season;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeSeasonCopyWith<_$_AnimeSeason> get copyWith =>
      throw _privateConstructorUsedError;
}
