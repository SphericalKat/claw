import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'comments_state.dart';

@injectable
class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit() : super(CommentsInitial());
}
