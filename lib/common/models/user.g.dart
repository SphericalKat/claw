// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      username: json['username'] as String,
      createdAt: json['createdAt'] as String,
      isAdmin: json['isAdmin'] as bool,
      isModerator: json['isModerator'] as bool,
      about: json['about'] as String,
      karma: json['karma'] as int,
      avatarUrl: json['avatarUrl'] as String,
      invitedByUser: json['invitedByUser'] as String,
      githubUsername: json['githubUsername'] as String?,
      twitterUsername: json['twitterUsername'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'username': instance.username,
      'createdAt': instance.createdAt,
      'isAdmin': instance.isAdmin,
      'about': instance.about,
      'isModerator': instance.isModerator,
      'karma': instance.karma,
      'avatarUrl': instance.avatarUrl,
      'invitedByUser': instance.invitedByUser,
      'githubUsername': instance.githubUsername,
      'twitterUsername': instance.twitterUsername,
    };
