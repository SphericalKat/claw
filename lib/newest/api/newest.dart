import 'package:claw/common/models/post.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NewestApi {
  final Dio _dio;
  NewestApi(this._dio);

  Future<List<Post>> getNewest([int page = 1]) async {
    final response = await _dio.get('/newest/page/$page.json');
    print('https://lobste.rs/newest/page/$page.json');
    return (response.data as List).map((d) => Post.fromJson(d)).toList();
  }
}
