part of 'newest_cubit.dart';

abstract class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

class NewestInitial extends NewestState {}

class NewestComplete extends NewestState {
  final List<Post> posts;
  final int currentPage;

  const NewestComplete(this.posts, this.currentPage);
}

class NewestFailure extends NewestState {
  final String message;

  const NewestFailure(this.message);
}

class NewestLoading extends NewestState {
  final int page;

  const NewestLoading(this.page);
}
