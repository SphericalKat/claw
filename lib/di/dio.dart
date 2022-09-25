import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
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
    var dio = Dio(options);
    // dio.interceptors.add(dioLoggerInterceptor);
    dio.interceptors.add(RetryInterceptor(dio: dio));
    return dio;
  }
}
