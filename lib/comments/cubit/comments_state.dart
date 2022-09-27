part of 'comments_cubit.dart';

abstract class CommentsState extends Equatable {
  const CommentsState();

  @override
  List<Object> get props => [];
}

class CommentsInitial extends CommentsState {}

class CommentsComplete extends CommentsState {
  final List<Comment> comments;
  const CommentsComplete(this.comments);
}

class CommentsFailure extends CommentsState {
  final String message;
  const CommentsFailure(this.message);
}

class HottestLoading extends CommentsState {}