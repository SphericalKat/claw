import 'package:bloc/bloc.dart';
import 'package:claw/comments/api/comments.dart';
import 'package:claw/common/models/comment.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'comments_state.dart';

@injectable
class CommentsCubit extends Cubit<CommentsState> {
  final CommentsApi _api;
  final Logger _logger;
  CommentsCubit(this._api, this._logger) : super(CommentsInitial());

  Future<void> getComments(String commentsUrl) async {
    if (state is CommentsLoading) return;
    emit(CommentsLoading());
    try {
      var comments = await _api.getComments(commentsUrl);
      emit(CommentsComplete(comments));
    } catch (e) {
      _logger.e("Error fetching comments", e);
      emit(CommentsFailure(e.toString()));
    }
  }
}
