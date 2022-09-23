part of 'hottest_cubit.dart';

abstract class HottestState extends Equatable {
  const HottestState();

  @override
  List<Object> get props => [];
}

class HottestInitial extends HottestState {}

class HottestComplete extends HottestState {
  final List<Post> posts;
  const HottestComplete(this.posts);
}

class HottestFailure extends HottestState {
  final String message;
  const HottestFailure(this.message);
}

class HottestLoading extends HottestState {}