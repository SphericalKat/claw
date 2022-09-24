
import 'package:claw/common/models/post.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class IsarModule {
  @preResolve
  Future<Isar> get isar => Isar.open([PostSchema]);
}