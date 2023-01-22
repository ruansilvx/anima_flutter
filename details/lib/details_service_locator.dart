import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@internal
final getIt = GetIt.instance;

@InjectableInit.microPackage()
void initDetailsMicroPackage() {}
