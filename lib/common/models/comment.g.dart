// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      shortId: json['short_id'] as String,
      shortIdUrl: json['short_id_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isDeleted: json['is_deleted'] as bool,
      isModerated: json['is_moderated'] as bool,
      score: json['score'] as int,
      flags: json['flags'] as int,
      parentComment: json['parent_comment'] as String?,
      comment: json['comment'] as String,
      commentPlain: json['commentPlain'] as String,
      url: json['url'] as String,
      indentLevel: json['indent_level'] as int,
      commentingUser:
          User.fromJson(json['commenting_user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'short_id': instance.shortId,
      'short_id_url': instance.shortIdUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'is_moderated': instance.isModerated,
      'score': instance.score,
      'flags': instance.flags,
      'parent_comment': instance.parentComment,
      'comment': instance.comment,
      'commentPlain': instance.commentPlain,
      'url': instance.url,
      'indent_level': instance.indentLevel,
      'commenting_user': instance.commentingUser,
    };
