//@GeneratedMicroModule;ListPackageModule;package:list/list_service_locator.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;
import 'package:list/src/data/datasources/anime_list_remote_data_source.dart'
    as _i3;
import 'package:list/src/data/repositories/anime_list_repository_impl.dart'
    as _i6;
import 'package:list/src/domain/repositories/anime_list_repository.dart' as _i5;
import 'package:list/src/domain/usecases/get_anime_list_use_case.dart' as _i7;
import 'package:list/src/presentation/blocs/anime_list/anime_list_bloc.dart'
    as _i8;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class ListPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AnimeListRemoteDataSource>(
        () => _i3.AnimeListRemoteDataSource(gh<_i4.Dio>()));
    gh.factory<_i5.AnimeListRepository>(
        () => _i6.AnimeListRepositoryImpl(gh<_i3.AnimeListRemoteDataSource>()));
    gh.factory<_i7.GetAnimeListUseCase>(
        () => _i7.GetAnimeListUseCase(gh<_i5.AnimeListRepository>()));
    gh.factory<_i8.AnimeListBloc>(
        () => _i8.AnimeListBloc(gh<_i7.GetAnimeListUseCase>()));
  }
}
