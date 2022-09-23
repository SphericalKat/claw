// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      shortId: json['shortId'] as String,
      shortIdUrl: json['shortIdUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      url: json['url'] as String,
      score: json['score'] as int,
      flags: json['flags'] as int,
      commentCount: json['commentCount'] as int,
      description: json['description'] as String,
      descriptionPlain: json['descriptionPlain'] as String,
      commentsUrl: json['commentsUrl'] as String,
      submitterUser:
          User.fromJson(json['submitterUser'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'shortId': instance.shortId,
      'shortIdUrl': instance.shortIdUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'url': instance.url,
      'score': instance.score,
      'flags': instance.flags,
      'commentCount': instance.commentCount,
      'description': instance.description,
      'descriptionPlain': instance.descriptionPlain,
      'commentsUrl': instance.commentsUrl,
      'submitterUser': instance.submitterUser,
      'tags': instance.tags,
    };
