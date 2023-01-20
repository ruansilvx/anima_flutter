import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModule {
  Dio get dio => Dio(BaseOptions(baseUrl: 'http://10.0.2.2:4000'))
    ..interceptors.add(PrettyDioLogger());
}
