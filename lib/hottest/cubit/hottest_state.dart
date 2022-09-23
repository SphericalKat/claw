part of 'hottest_cubit.dart';

abstract class HottestState extends Equatable {
  const HottestState();

  @override
  List<Object> get props => [];
}

class HottestInitial extends HottestState {}

class HottestComplete extends HottestState {
  final List<Post> _posts;
  const HottestComplete(this._posts);
}

class HottestFailure extends HottestState {
  final String _message;
  const HottestFailure(this._message);
}

class HottestLoading extends HottestState {}