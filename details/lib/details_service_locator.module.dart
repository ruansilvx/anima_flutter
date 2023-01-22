//@GeneratedMicroModule;DetailsPackageModule;package:details/details_service_locator.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:details/src/data/data_sources/anime_details_remote_data_source.dart'
    as _i3;
import 'package:details/src/data/repositories/anime_details_repository_impl.dart'
    as _i6;
import 'package:details/src/domain/repositories/anime_details_repository.dart'
    as _i5;
import 'package:details/src/domain/use_cases/get_anime_use_case.dart' as _i7;
import 'package:details/src/presentation/blocs/anime_details_cubit.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
class DetailsPackageModule extends _i1.MicroPackageModule {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.AnimeDetailsRemoteDataSource>(
        () => _i3.AnimeDetailsRemoteDataSource(gh<_i4.Dio>()));
    gh.factory<_i5.AnimeDetailsRepository>(() =>
        _i6.AnimeDetailsRepositoryImpl(gh<_i3.AnimeDetailsRemoteDataSource>()));
    gh.factory<_i7.GetAnimeUseCase>(
        () => _i7.GetAnimeUseCase(gh<_i5.AnimeDetailsRepository>()));
    gh.factory<_i8.AnimeDetailsCubit>(
        () => _i8.AnimeDetailsCubit(gh<_i7.GetAnimeUseCase>()));
  }
}
