import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String username;
  String createdAt;
  bool isAdmin;
  String about;
  bool isModerator;
  int karma;
  String avatarUrl;
  String invitedByUser;
  String? githubUsername;
  String? twitterUsername;

  User(
      {required this.username,
      required this.createdAt,
      required this.isAdmin,
      required this.isModerator,
      required this.about,
      required this.karma,
      required this.avatarUrl,
      required this.invitedByUser,
      this.githubUsername,
      this.twitterUsername,
  });
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}