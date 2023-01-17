// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeListState {
  List<Anime> get list => throw _privateConstructorUsedError;
  AnimeListFormat get listFormat => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int? get nextPage => throw _privateConstructorUsedError;
  String? get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeListStateCopyWith<AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) then) =
      _$AnimeListStateCopyWithImpl<$Res, AnimeListState>;
  @useResult
  $Res call(
      {List<Anime> list,
      AnimeListFormat listFormat,
      bool error,
      int limit,
      int? nextPage,
      String? searchQuery});
}

/// @nodoc
class _$AnimeListStateCopyWithImpl<$Res, $Val extends AnimeListState>
    implements $AnimeListStateCopyWith<$Res> {
  _$AnimeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? listFormat = null,
    Object? error = null,
    Object? limit = null,
    Object? nextPage = freezed,
    Object? searchQuery = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      listFormat: null == listFormat
          ? _value.listFormat
          : listFormat // ignore: cast_nullable_to_non_nullable
              as AnimeListFormat,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnimeListStateCopyWith<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  factory _$$_AnimeListStateCopyWith(
          _$_AnimeListState value, $Res Function(_$_AnimeListState) then) =
      __$$_AnimeListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Anime> list,
      AnimeListFormat listFormat,
      bool error,
      int limit,
      int? nextPage,
      String? searchQuery});
}

/// @nodoc
class __$$_AnimeListStateCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$_AnimeListState>
    implements _$$_AnimeListStateCopyWith<$Res> {
  __$$_AnimeListStateCopyWithImpl(
      _$_AnimeListState _value, $Res Function(_$_AnimeListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? listFormat = null,
    Object? error = null,
    Object? limit = null,
    Object? nextPage = freezed,
    Object? searchQuery = freezed,
  }) {
    return _then(_$_AnimeListState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Anime>,
      listFormat: null == listFormat
          ? _value.listFormat
          : listFormat // ignore: cast_nullable_to_non_nullable
              as AnimeListFormat,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AnimeListState implements _AnimeListState {
  const _$_AnimeListState(
      {final List<Anime> list = const [],
      this.listFormat = AnimeListFormat.list,
      this.error = false,
      this.limit = 10,
      this.nextPage,
      this.searchQuery})
      : _list = list;

  final List<Anime> _list;
  @override
  @JsonKey()
  List<Anime> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final AnimeListFormat listFormat;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final int limit;
  @override
  final int? nextPage;
  @override
  final String? searchQuery;

  @override
  String toString() {
    return 'AnimeListState(list: $list, listFormat: $listFormat, error: $error, limit: $limit, nextPage: $nextPage, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeListState &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.listFormat, listFormat) ||
                other.listFormat == listFormat) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      listFormat,
      error,
      limit,
      nextPage,
      searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      __$$_AnimeListStateCopyWithImpl<_$_AnimeListState>(this, _$identity);
}

abstract class _AnimeListState implements AnimeListState {
  const factory _AnimeListState(
      {final List<Anime> list,
      final AnimeListFormat listFormat,
      final bool error,
      final int limit,
      final int? nextPage,
      final String? searchQuery}) = _$_AnimeListState;

  @override
  List<Anime> get list;
  @override
  AnimeListFormat get listFormat;
  @override
  bool get error;
  @override
  int get limit;
  @override
  int? get nextPage;
  @override
  String? get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}
