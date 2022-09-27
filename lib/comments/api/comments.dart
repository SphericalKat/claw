import 'package:claw/common/models/comment.dart';
import 'package:claw/common/models/post.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CommentsApi {
  final Dio _dio;
  CommentsApi(this._dio);

  Future<List<Comment>> getComments(String commentsUrl) async {
    final response = await _dio.get('$commentsUrl.json');
    var post = Post.fromJson(response.data);
    return post.comments ?? [];
  }
}
