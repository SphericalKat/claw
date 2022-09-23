// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../hottest/api/hottest.dart' as _i4;
import '../hottest/cubit/hottest_cubit.dart' as _i6;
import 'dio.dart' as _i7;
import 'logger.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  final loggerModule = _$LoggerModule();
  gh.lazySingleton<_i3.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i4.HottestApi>(() => _i4.HottestApi(get<_i3.Dio>()));
  gh.lazySingleton<_i5.Logger>(() => loggerModule.logger);
  gh.lazySingleton<_i6.HottestCubit>(() => _i6.HottestCubit(
        get<_i4.HottestApi>(),
        get<_i5.Logger>(),
      ));
  return get;
}

class _$DioModule extends _i7.DioModule {}

class _$LoggerModule extends _i8.LoggerModule {}
