library shared_dependencies;

export 'package:provider/provider.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:get_it/get_it.dart';
// The const value test from injectable overlaps with the test function from test plugin
export 'package:injectable/injectable.dart' hide test;
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:json_annotation/json_annotation.dart';
export 'package:dio/dio.dart';
export 'package:pretty_dio_logger/pretty_dio_logger.dart';
export 'package:mocktail/mocktail.dart';
export 'package:bloc_test/bloc_test.dart';
export 'package:stream_transform/stream_transform.dart';
