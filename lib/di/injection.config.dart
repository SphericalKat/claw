// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:logger/logger.dart' as _i6;

import '../hottest/api/hottest.dart' as _i4;
import '../hottest/cubit/hottest_cubit.dart' as _i9;
import '../newest/api/newest.dart' as _i7;
import '../newest/cubit/newest_cubit.dart' as _i8;
import 'dio.dart' as _i10;
import 'isar.dart' as _i11;
import 'logger.dart' as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  final isarModule = _$IsarModule();
  final loggerModule = _$LoggerModule();
  gh.lazySingleton<_i3.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i4.HottestApi>(() => _i4.HottestApi(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.Isar>(
    () => isarModule.isar,
    preResolve: true,
  );
  gh.lazySingleton<_i6.Logger>(() => loggerModule.logger);
  gh.lazySingleton<_i7.NewestApi>(() => _i7.NewestApi(get<_i3.Dio>()));
  gh.lazySingleton<_i8.NewestCubit>(() => _i8.NewestCubit(
        get<_i7.NewestApi>(),
        get<_i6.Logger>(),
        get<_i5.Isar>(),
      ));
  gh.lazySingleton<_i9.HottestCubit>(() => _i9.HottestCubit(
        get<_i4.HottestApi>(),
        get<_i6.Logger>(),
        get<_i5.Isar>(),
      ));
  return get;
}

class _$DioModule extends _i10.DioModule {}

class _$IsarModule extends _i11.IsarModule {}

class _$LoggerModule extends _i12.LoggerModule {}
