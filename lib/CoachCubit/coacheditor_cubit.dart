// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/CoachModel.dart';

import 'package:meta/meta.dart';

part 'coacheditor_state.dart';

class CoacheditorCubit extends Cubit<CoacheditorState> {
  CoacheditorCubit({required this.url}) : super(CoacheditorInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(CoachEditorFetching());
    try {
      final List<CoachDataModel> data = (await web.getCoachEditor()).cast<CoachDataModel>();
      emit(CoachEditorDataReady(data: data));
    } catch (e) {
      print(e.toString());
      emit(CoachEditorFetchError(
        e.toString(),
      ));
    }
  }
}
