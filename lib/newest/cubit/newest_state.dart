part of 'newest_cubit.dart';

abstract class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

class NewestInitial extends NewestState {}

class NewestComplete extends NewestState {
  final List<Post> posts;
  const NewestComplete(this.posts);
}

class NewestFailure extends NewestState {
  final String message;
  const NewestFailure(this.message);
}

class NewestLoading extends NewestState {}