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

  NewestCubit(this._api, this._logger, this._isar) : super(NewestInitial());

  Future<void> getNewest([int page = 1]) async {
    if (state is NewestLoading) return;

    emit(NewestLoading(page));
    try {
      // get latest posts from api
      final posts = await _api.getNewest(page);

      // save posts to isar
      await _isar.writeTxn(() async {
        // get all hottest posts
        var hottest = await _isar.posts
            .where()
            .isHottestEqualTo(true)
            .shortIdProperty()
            .findAll();
        await _isar.posts.putAll(posts.map((e) {
          if (hottest.contains(e.shortId)) {
            e.isHottest = true;
          }
          return e;
        }).toList());
      });

      emit(NewestComplete(posts, page));
    } catch (e) {
      _logger.e("Error fetching newest posts", e);
      emit(NewestFailure(e.toString()));
    }
  }
}
