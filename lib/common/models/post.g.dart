// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      shortId: json['short_id'] as String,
      shortIdUrl: json['short_id_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      title: json['title'] as String,
      url: json['url'] as String,
      score: json['score'] as int,
      flags: json['flags'] as int,
      commentCount: json['comment_count'] as int,
      description: json['description'] as String,
      descriptionPlain: json['description_plain'] as String,
      commentsUrl: json['comments_url'] as String,
      submitterUser:
          User.fromJson(json['submitter_user'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'short_id': instance.shortId,
      'short_id_url': instance.shortIdUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'url': instance.url,
      'score': instance.score,
      'flags': instance.flags,
      'comment_count': instance.commentCount,
      'description': instance.description,
      'description_plain': instance.descriptionPlain,
      'comments_url': instance.commentsUrl,
      'submitter_user': instance.submitterUser,
      'tags': instance.tags,
    };
