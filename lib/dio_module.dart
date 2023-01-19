import 'package:shared_dependencies/shared_dependencies.dart';

@module
abstract class DioModule {
  Dio get dio => Dio(BaseOptions(baseUrl: 'http://10.0.2.2:4000'))
    ..interceptors.add(PrettyDioLogger());
}
