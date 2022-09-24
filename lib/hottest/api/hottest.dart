import 'package:claw/common/models/post.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HottestApi {
  final Dio _dio;
  HottestApi(this._dio);

  Future<List<Post>> getHottest() async {
    final response = await _dio.get('/hottest.json');
    return (response.data as List)
      .map((d) => Post.fromJson(d))
      .toList();
  }
}
