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

    @JsonKey(name: 'short_id') String shortId;
    @JsonKey(name: 'short_id_url') String shortIdUrl;
    @JsonKey(name: 'created_at') DateTime createdAt;
    @JsonKey(name: 'title') String title;
    @JsonKey(name: 'url') String url;
    @JsonKey(name: 'score') int score;
    @JsonKey(name: 'flags') int flags;
    @JsonKey(name: 'comment_count') int commentCount;
    @JsonKey(name: 'description') String description;
    @JsonKey(name: 'description_plain') String descriptionPlain;
    @JsonKey(name: 'comments_url') String commentsUrl;
    @JsonKey(name: 'submitter_user') User submitterUser;
    @JsonKey(name: 'tags') List<String> tags;

    factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

    Map<String, dynamic> toJson() => _$PostToJson(this);
}
