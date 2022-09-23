// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      username: json['username'] as String,
      createdAt: json['created_at'] as String,
      isAdmin: json['is_admin'] as bool,
      isModerator: json['is_moderator'] as bool,
      about: json['about'] as String,
      karma: json['karma'] as int,
      avatarUrl: json['avatar_url'] as String,
      invitedByUser: json['invited_by_user'] as String,
      githubUsername: json['github_username'] as String?,
      twitterUsername: json['twitter_username'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'created_at': instance.createdAt,
      'is_admin': instance.isAdmin,
      'about': instance.about,
      'is_moderator': instance.isModerator,
      'karma': instance.karma,
      'avatar_url': instance.avatarUrl,
      'invited_by_user': instance.invitedByUser,
      'github_username': instance.githubUsername,
      'twitter_username': instance.twitterUsername,
    };
