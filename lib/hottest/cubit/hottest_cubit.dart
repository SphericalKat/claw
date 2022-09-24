import 'package:bloc/bloc.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/hottest/api/hottest.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

part 'hottest_state.dart';

@lazySingleton
class HottestCubit extends Cubit<HottestState> {
  final HottestApi _api;
  final Logger _logger;
  final Isar _isar;
  HottestCubit(this._api, this._logger, this._isar) : super(HottestInitial());

  Future<void> getHottest() async {
    emit(HottestLoading());
    try {
      // first, check if we have any cached posts
      var cachedPosts = await _isar.posts.where().findAll();
      if (cachedPosts.isNotEmpty) {
        // emit cached posts
        emit(HottestComplete(cachedPosts));
      }

      // get latest posts from api
      final posts = await _api.getHottest();

      // save posts to isar
      await _isar.writeTxn(() async {
        await _isar.posts.where().deleteAll();
        await _isar.posts.putAll(posts);
      });

      emit(HottestComplete(posts));
    } catch (e) {
      _logger.e("Error fetching hottest posts", e);
      emit(HottestFailure(e.toString()));
    }
  }
}
