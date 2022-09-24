import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
@embedded
class User {
  @JsonKey(name: 'username') String username;
  @JsonKey(name: 'created_at') String createdAt;
  @JsonKey(name: 'is_admin') bool isAdmin;
  @JsonKey(name: 'about') String about;
  @JsonKey(name: 'is_moderator') bool isModerator;
  @JsonKey(name: 'karma') int karma;
  @JsonKey(name: 'avatar_url') String avatarUrl;
  @JsonKey(name: 'invited_by_user') String invitedByUser;
  @JsonKey(name: 'github_username') String? githubUsername;
  @JsonKey(name: 'twitter_username') String? twitterUsername;

  User(
      {this.username = "",
      this.createdAt = "",
      this.isAdmin = false,
      this.isModerator = false,
      this.about = "",
      this.karma = 0,
      this.avatarUrl = "",
      this.invitedByUser = "",
      this.githubUsername,
      this.twitterUsername,
  });
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}