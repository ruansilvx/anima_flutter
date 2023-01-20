// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Anime {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  AnimeType get type => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  AnimeSeason get season => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res, Anime>;
  @useResult
  $Res call(
      {String id,
      String title,
      AnimeType type,
      String picture,
      AnimeSeason season});

  $AnimeSeasonCopyWith<$Res> get season;
}

/// @nodoc
class _$AnimeCopyWithImpl<$Res, $Val extends Anime>
    implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? picture = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnimeType,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeSeasonCopyWith<$Res> get season {
    return $AnimeSeasonCopyWith<$Res>(_value.season, (value) {
      return _then(_value.copyWith(season: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$$_AnimeCopyWith(_$_Anime value, $Res Function(_$_Anime) then) =
      __$$_AnimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      AnimeType type,
      String picture,
      AnimeSeason season});

  @override
  $AnimeSeasonCopyWith<$Res> get season;
}

/// @nodoc
class __$$_AnimeCopyWithImpl<$Res> extends _$AnimeCopyWithImpl<$Res, _$_Anime>
    implements _$$_AnimeCopyWith<$Res> {
  __$$_AnimeCopyWithImpl(_$_Anime _value, $Res Function(_$_Anime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? picture = null,
    Object? season = null,
  }) {
    return _then(_$_Anime(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnimeType,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
    ));
  }
}

/// @nodoc

class _$_Anime with DiagnosticableTreeMixin implements _Anime {
  const _$_Anime(
      {required this.id,
      required this.title,
      required this.type,
      required this.picture,
      required this.season});

  @override
  final String id;
  @override
  final String title;
  @override
  final AnimeType type;
  @override
  final String picture;
  @override
  final AnimeSeason season;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Anime(id: $id, title: $title, type: $type, picture: $picture, season: $season)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Anime'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('season', season));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Anime &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.season, season) || other.season == season));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, type, picture, season);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      __$$_AnimeCopyWithImpl<_$_Anime>(this, _$identity);
}

abstract class _Anime implements Anime {
  const factory _Anime(
      {required final String id,
      required final String title,
      required final AnimeType type,
      required final String picture,
      required final AnimeSeason season}) = _$_Anime;

  @override
  String get id;
  @override
  String get title;
  @override
  AnimeType get type;
  @override
  String get picture;
  @override
  AnimeSeason get season;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      throw _privateConstructorUsedError;
}
