import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio {
    final options = BaseOptions(
      baseUrl: 'https://lobste.rs',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );
    return Dio(options);
  }
}