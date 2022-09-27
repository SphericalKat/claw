import 'package:claw/common/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  Comment({
    required this.shortId,
    required this.shortIdUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.isDeleted,
    required this.isModerated,
    required this.score,
    required this.flags,
    this.parentComment,
    required this.comment,
    required this.commentPlain,
    required this.url,
    required this.indentLevel,
    required this.commentingUser,
  });

  @JsonKey(name: 'short_id')
  String shortId;
  @JsonKey(name: 'short_id_url')
  String shortIdUrl;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;
  @JsonKey(name: 'is_deleted')
  bool isDeleted;
  @JsonKey(name: 'is_moderated')
  bool isModerated;
  @JsonKey(name: 'score')
  int score;
  @JsonKey(name: 'flags')
  int flags;
  @JsonKey(name: 'parent_comment')
  String? parentComment;
  @JsonKey(name: 'comment')
  String comment;
  @JsonKey(name: 'commentPlain')
  String commentPlain;
  @JsonKey(name: 'url')
  String url;
  @JsonKey(name: 'indent_level')
  int indentLevel;
  @JsonKey(name: 'commenting_user')
  User commentingUser;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
