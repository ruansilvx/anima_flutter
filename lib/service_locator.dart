import 'package:anima_flutter/service_locator.config.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@internal
final getIt = GetIt.instance;

@InjectableInit()
void initDependencies() => getIt.init();