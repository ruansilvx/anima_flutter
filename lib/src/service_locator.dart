import 'package:anima_flutter/src/service_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@internal
final getIt = GetIt.instance;

@InjectableInit()
void initServiceLocator() => getIt.init();
