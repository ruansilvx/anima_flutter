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
  String get title => throw _privateConstructorUsedError;
  AnimeType get type => throw _privateConstructorUsedError;
  AnimeStatus get status => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  AnimeSeason get season => throw _privateConstructorUsedError;
  List<String> get relations => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeCopyWith<Anime> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeCopyWith<$Res> {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) then) =
      _$AnimeCopyWithImpl<$Res, Anime>;
  @useResult
  $Res call(
      {String title,
      AnimeType type,
      AnimeStatus status,
      String picture,
      AnimeSeason season,
      List<String> relations,
      List<String> tags});

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
    Object? title = null,
    Object? type = null,
    Object? status = null,
    Object? picture = null,
    Object? season = null,
    Object? relations = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnimeType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimeStatus,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
      relations: null == relations
          ? _value.relations
          : relations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {String title,
      AnimeType type,
      AnimeStatus status,
      String picture,
      AnimeSeason season,
      List<String> relations,
      List<String> tags});

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
    Object? title = null,
    Object? type = null,
    Object? status = null,
    Object? picture = null,
    Object? season = null,
    Object? relations = null,
    Object? tags = null,
  }) {
    return _then(_$_Anime(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnimeType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AnimeStatus,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as AnimeSeason,
      relations: null == relations
          ? _value._relations
          : relations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Anime with DiagnosticableTreeMixin implements _Anime {
  const _$_Anime(
      {required this.title,
      required this.type,
      required this.status,
      required this.picture,
      required this.season,
      required final List<String> relations,
      required final List<String> tags})
      : _relations = relations,
        _tags = tags;

  @override
  final String title;
  @override
  final AnimeType type;
  @override
  final AnimeStatus status;
  @override
  final String picture;
  @override
  final AnimeSeason season;
  final List<String> _relations;
  @override
  List<String> get relations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relations);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Anime(title: $title, type: $type, status: $status, picture: $picture, season: $season, relations: $relations, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Anime'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('season', season))
      ..add(DiagnosticsProperty('relations', relations))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Anime &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.season, season) || other.season == season) &&
            const DeepCollectionEquality()
                .equals(other._relations, _relations) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      type,
      status,
      picture,
      season,
      const DeepCollectionEquality().hash(_relations),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      __$$_AnimeCopyWithImpl<_$_Anime>(this, _$identity);
}

abstract class _Anime implements Anime {
  const factory _Anime(
      {required final String title,
      required final AnimeType type,
      required final AnimeStatus status,
      required final String picture,
      required final AnimeSeason season,
      required final List<String> relations,
      required final List<String> tags}) = _$_Anime;

  @override
  String get title;
  @override
  AnimeType get type;
  @override
  AnimeStatus get status;
  @override
  String get picture;
  @override
  AnimeSeason get season;
  @override
  List<String> get relations;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeCopyWith<_$_Anime> get copyWith =>
      throw _privateConstructorUsedError;
}
