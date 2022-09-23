import 'package:claw/common/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  Post({
        required this.shortId,
        required this.shortIdUrl,
        required this.createdAt,
        required this.title,
        required this.url,
        required this.score,
        required this.flags,
        required this.commentCount,
        required this.description,
        required this.descriptionPlain,
        required this.commentsUrl,
        required this.submitterUser,
        required this.tags,
    });

    String shortId;
    String shortIdUrl;
    DateTime createdAt;
    String title;
    String url;
    int score;
    int flags;
    int commentCount;
    String description;
    String descriptionPlain;
    String commentsUrl;
    User submitterUser;
    List<String> tags;

    factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

    Map<String, dynamic> toJson() => _$PostToJson(this);
}
