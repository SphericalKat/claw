// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:logger/logger.dart' as _i7;

import '../comments/api/comments.dart' as _i10;
import '../comments/cubit/comments_cubit.dart' as _i3;
import '../hottest/api/hottest.dart' as _i5;
import '../hottest/cubit/hottest_cubit.dart' as _i11;
import '../newest/api/newest.dart' as _i8;
import '../newest/cubit/newest_cubit.dart' as _i9;
import 'dio.dart' as _i12;
import 'isar.dart' as _i13;
import 'logger.dart' as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i3.CommentsCubit>(() => _i3.CommentsCubit());
  gh.lazySingleton<_i4.Dio>(() => dioModule.dio);
  gh.lazySingleton<_i5.HottestApi>(() => _i5.HottestApi(get<_i4.Dio>()));
  await gh.factoryAsync<_i6.Isar>(
    () => isarModule.isar,
    preResolve: true,
  );
  gh.lazySingleton<_i7.Logger>(() => loggerModule.logger);
  gh.lazySingleton<_i8.NewestApi>(() => _i8.NewestApi(get<_i4.Dio>()));
  gh.lazySingleton<_i9.NewestCubit>(() => _i9.NewestCubit(
        get<_i8.NewestApi>(),
        get<_i7.Logger>(),
        get<_i6.Isar>(),
      ));
  gh.lazySingleton<_i10.CommentsApi>(() => _i10.CommentsApi(get<_i4.Dio>()));
  gh.lazySingleton<_i11.HottestCubit>(() => _i11.HottestCubit(
        get<_i5.HottestApi>(),
        get<_i7.Logger>(),
        get<_i6.Isar>(),
      ));
  return get;
}

class _$DioModule extends _i12.DioModule {}

class _$IsarModule extends _i13.IsarModule {}

class _$LoggerModule extends _i14.LoggerModule {}
