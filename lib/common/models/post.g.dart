// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetPostCollection on Isar {
  IsarCollection<Post> get posts => this.collection();
}

const PostSchema = CollectionSchema(
  name: r'Post',
  id: -1683556178151468304,
  properties: {
    r'commentCount': PropertySchema(
      id: 0,
      name: r'commentCount',
      type: IsarType.long,
    ),
    r'commentsUrl': PropertySchema(
      id: 1,
      name: r'commentsUrl',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'descriptionPlain': PropertySchema(
      id: 4,
      name: r'descriptionPlain',
      type: IsarType.string,
    ),
    r'flags': PropertySchema(
      id: 5,
      name: r'flags',
      type: IsarType.long,
    ),
    r'isHottest': PropertySchema(
      id: 6,
      name: r'isHottest',
      type: IsarType.bool,
    ),
    r'score': PropertySchema(
      id: 7,
      name: r'score',
      type: IsarType.long,
    ),
    r'shortId': PropertySchema(
      id: 8,
      name: r'shortId',
      type: IsarType.string,
    ),
    r'shortIdUrl': PropertySchema(
      id: 9,
      name: r'shortIdUrl',
      type: IsarType.string,
    ),
    r'submitterUser': PropertySchema(
      id: 10,
      name: r'submitterUser',
      type: IsarType.object,
      target: r'User',
    ),
    r'tags': PropertySchema(
      id: 11,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(
      id: 12,
      name: r'title',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 13,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _postEstimateSize,
  serialize: _postSerialize,
  deserialize: _postDeserialize,
  deserializeProp: _postDeserializeProp,
  idName: r'id',
  indexes: {
    r'shortId': IndexSchema(
      id: 8658437638058725694,
      name: r'shortId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'shortId',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'isHottest': IndexSchema(
      id: -925480020536448879,
      name: r'isHottest',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'isHottest',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'User': UserSchema},
  getId: _postGetId,
  getLinks: _postGetLinks,
  attach: _postAttach,
  version: '3.0.1',
);

int _postEstimateSize(
  Post object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.commentsUrl.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.descriptionPlain.length * 3;
  bytesCount += 3 + object.shortId.length * 3;
  bytesCount += 3 + object.shortIdUrl.length * 3;
  bytesCount += 3 +
      UserSchema.estimateSize(
          object.submitterUser, allOffsets[User]!, allOffsets);
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.title.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _postSerialize(
  Post object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.commentCount);
  writer.writeString(offsets[1], object.commentsUrl);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.description);
  writer.writeString(offsets[4], object.descriptionPlain);
  writer.writeLong(offsets[5], object.flags);
  writer.writeBool(offsets[6], object.isHottest);
  writer.writeLong(offsets[7], object.score);
  writer.writeString(offsets[8], object.shortId);
  writer.writeString(offsets[9], object.shortIdUrl);
  writer.writeObject<User>(
    offsets[10],
    allOffsets,
    UserSchema.serialize,
    object.submitterUser,
  );
  writer.writeStringList(offsets[11], object.tags);
  writer.writeString(offsets[12], object.title);
  writer.writeString(offsets[13], object.url);
}

Post _postDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Post(
    commentCount: reader.readLong(offsets[0]),
    commentsUrl: reader.readString(offsets[1]),
    createdAt: reader.readDateTime(offsets[2]),
    description: reader.readString(offsets[3]),
    descriptionPlain: reader.readString(offsets[4]),
    flags: reader.readLong(offsets[5]),
    score: reader.readLong(offsets[7]),
    shortId: reader.readString(offsets[8]),
    shortIdUrl: reader.readString(offsets[9]),
    submitterUser: reader.readObjectOrNull<User>(
          offsets[10],
          UserSchema.deserialize,
          allOffsets,
        ) ??
        User(),
    tags: reader.readStringList(offsets[11]) ?? [],
    title: reader.readString(offsets[12]),
    url: reader.readString(offsets[13]),
  );
  object.id = id;
  object.isHottest = reader.readBool(offsets[6]);
  return object;
}

P _postDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<User>(
            offset,
            UserSchema.deserialize,
            allOffsets,
          ) ??
          User()) as P;
    case 11:
      return (reader.readStringList(offset) ?? []) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _postGetId(Post object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _postGetLinks(Post object) {
  return [];
}

void _postAttach(IsarCollection<dynamic> col, Id id, Post object) {
  object.id = id;
}

extension PostByIndex on IsarCollection<Post> {
  Future<Post?> getByShortId(String shortId) {
    return getByIndex(r'shortId', [shortId]);
  }

  Post? getByShortIdSync(String shortId) {
    return getByIndexSync(r'shortId', [shortId]);
  }

  Future<bool> deleteByShortId(String shortId) {
    return deleteByIndex(r'shortId', [shortId]);
  }

  bool deleteByShortIdSync(String shortId) {
    return deleteByIndexSync(r'shortId', [shortId]);
  }

  Future<List<Post?>> getAllByShortId(List<String> shortIdValues) {
    final values = shortIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'shortId', values);
  }

  List<Post?> getAllByShortIdSync(List<String> shortIdValues) {
    final values = shortIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'shortId', values);
  }

  Future<int> deleteAllByShortId(List<String> shortIdValues) {
    final values = shortIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'shortId', values);
  }

  int deleteAllByShortIdSync(List<String> shortIdValues) {
    final values = shortIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'shortId', values);
  }

  Future<Id> putByShortId(Post object) {
    return putByIndex(r'shortId', object);
  }

  Id putByShortIdSync(Post object, {bool saveLinks = true}) {
    return putByIndexSync(r'shortId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByShortId(List<Post> objects) {
    return putAllByIndex(r'shortId', objects);
  }

  List<Id> putAllByShortIdSync(List<Post> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'shortId', objects, saveLinks: saveLinks);
  }
}

extension PostQueryWhereSort on QueryBuilder<Post, Post, QWhere> {
  QueryBuilder<Post, Post, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Post, Post, QAfterWhere> anyShortId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'shortId'),
      );
    });
  }

  QueryBuilder<Post, Post, QAfterWhere> anyIsHottest() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'isHottest'),
      );
    });
  }
}

extension PostQueryWhere on QueryBuilder<Post, Post, QWhereClause> {
  QueryBuilder<Post, Post, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdEqualTo(String shortId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'shortId',
        value: [shortId],
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdNotEqualTo(
      String shortId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'shortId',
              lower: [],
              upper: [shortId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'shortId',
              lower: [shortId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'shortId',
              lower: [shortId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'shortId',
              lower: [],
              upper: [shortId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdGreaterThan(
    String shortId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'shortId',
        lower: [shortId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdLessThan(
    String shortId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'shortId',
        lower: [],
        upper: [shortId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdBetween(
    String lowerShortId,
    String upperShortId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'shortId',
        lower: [lowerShortId],
        includeLower: includeLower,
        upper: [upperShortId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdStartsWith(
      String ShortIdPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'shortId',
        lower: [ShortIdPrefix],
        upper: ['$ShortIdPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'shortId',
        value: [''],
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> shortIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'shortId',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'shortId',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'shortId',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'shortId',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> isHottestEqualTo(bool isHottest) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'isHottest',
        value: [isHottest],
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterWhereClause> isHottestNotEqualTo(
      bool isHottest) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isHottest',
              lower: [],
              upper: [isHottest],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isHottest',
              lower: [isHottest],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isHottest',
              lower: [isHottest],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'isHottest',
              lower: [],
              upper: [isHottest],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PostQueryFilter on QueryBuilder<Post, Post, QFilterCondition> {
  QueryBuilder<Post, Post, QAfterFilterCondition> commentCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentsUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commentsUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commentsUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentsUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> commentsUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commentsUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descriptionPlain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descriptionPlain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descriptionPlain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descriptionPlain',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> descriptionPlainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descriptionPlain',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> flagsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flags',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> flagsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flags',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> flagsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flags',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> flagsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> isHottestEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHottest',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> scoreEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> scoreGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> scoreLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'score',
        value: value,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> scoreBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'score',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shortId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shortId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shortId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortId',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shortId',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shortIdUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shortIdUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shortIdUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortIdUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> shortIdUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shortIdUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<Post, Post, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension PostQueryObject on QueryBuilder<Post, Post, QFilterCondition> {
  QueryBuilder<Post, Post, QAfterFilterCondition> submitterUser(
      FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'submitterUser');
    });
  }
}

extension PostQueryLinks on QueryBuilder<Post, Post, QFilterCondition> {}

extension PostQuerySortBy on QueryBuilder<Post, Post, QSortBy> {
  QueryBuilder<Post, Post, QAfterSortBy> sortByCommentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentCount', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByCommentCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentCount', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByCommentsUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUrl', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByCommentsUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUrl', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByDescriptionPlain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionPlain', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByDescriptionPlainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionPlain', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByFlags() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flags', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByFlagsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flags', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByIsHottest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHottest', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByIsHottestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHottest', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByShortId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortId', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByShortIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortId', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByShortIdUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortIdUrl', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByShortIdUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortIdUrl', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension PostQuerySortThenBy on QueryBuilder<Post, Post, QSortThenBy> {
  QueryBuilder<Post, Post, QAfterSortBy> thenByCommentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentCount', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByCommentCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentCount', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByCommentsUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUrl', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByCommentsUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsUrl', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByDescriptionPlain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionPlain', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByDescriptionPlainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descriptionPlain', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByFlags() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flags', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByFlagsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flags', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByIsHottest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHottest', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByIsHottestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHottest', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'score', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByShortId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortId', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByShortIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortId', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByShortIdUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortIdUrl', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByShortIdUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortIdUrl', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<Post, Post, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension PostQueryWhereDistinct on QueryBuilder<Post, Post, QDistinct> {
  QueryBuilder<Post, Post, QDistinct> distinctByCommentCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentCount');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByCommentsUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentsUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByDescriptionPlain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descriptionPlain',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByFlags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flags');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByIsHottest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHottest');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'score');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByShortId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByShortIdUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortIdUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Post, Post, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension PostQueryProperty on QueryBuilder<Post, Post, QQueryProperty> {
  QueryBuilder<Post, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Post, int, QQueryOperations> commentCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentCount');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> commentsUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentsUrl');
    });
  }

  QueryBuilder<Post, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> descriptionPlainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descriptionPlain');
    });
  }

  QueryBuilder<Post, int, QQueryOperations> flagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flags');
    });
  }

  QueryBuilder<Post, bool, QQueryOperations> isHottestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHottest');
    });
  }

  QueryBuilder<Post, int, QQueryOperations> scoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'score');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> shortIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortId');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> shortIdUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortIdUrl');
    });
  }

  QueryBuilder<Post, User, QQueryOperations> submitterUserProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'submitterUser');
    });
  }

  QueryBuilder<Post, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Post, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}

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
