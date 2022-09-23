import 'package:bloc/bloc.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/hottest/api/hottest.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'hottest_state.dart';

@lazySingleton
class HottestCubit extends Cubit<HottestState> {
  final HottestApi _api;
  HottestCubit(this._api) : super(HottestInitial());
}
