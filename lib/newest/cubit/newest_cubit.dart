import 'package:bloc/bloc.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/newest/api/newest.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';

part 'newest_state.dart';

@lazySingleton
class NewestCubit extends Cubit<NewestState> {
  final NewestApi _api;
  final Logger _logger;
  final Isar _isar;
  int _page = 1;

  NewestCubit(this._api, this._logger, this._isar) : super(NewestInitial());

  Future<void> getNewest() async {
    if (state is NewestLoading) return;

    emit(NewestLoading());
    try {
      // first, check if we have any cached posts
      var cachedPosts = await _isar.posts.where().sortByCreatedAt().findAll();
      if (cachedPosts.isNotEmpty) {
        // emit cached posts
        emit(NewestComplete(cachedPosts));
      }

      // get latest posts from api
      final posts = await _api.getNewest(_page);

      // save posts to isar
      await _isar.writeTxn(() async {
        await _isar.posts.putAll(posts);
      });

      var allPosts = await _isar.posts.where().sortByCreatedAt().findAll();

      _page++;

      emit(NewestComplete(allPosts));
    } catch (e) {
      _logger.e("Error fetching newest posts", e);
      emit(NewestFailure(e.toString()));
    }
  }
}
