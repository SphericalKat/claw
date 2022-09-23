import 'package:bloc/bloc.dart';
import 'package:claw/common/models/post.dart';
import 'package:claw/hottest/api/hottest.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'hottest_state.dart';

@lazySingleton
class HottestCubit extends Cubit<HottestState> {
  final HottestApi _api;
  final Logger _logger;
  HottestCubit(this._api, this._logger) : super(HottestInitial());

  Future<void> getHottest() async {
    emit(HottestLoading());
    try {
      final posts = await _api.getHottest();
      emit(HottestComplete(posts));
    } catch (e) {
      _logger.e("Error fetching hottest posts", e);
      emit(HottestFailure(e.toString()));
    }
  }
}
