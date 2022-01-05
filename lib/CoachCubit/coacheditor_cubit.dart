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
    emit(Fetching());
    try {
      final List<Map> data = await web.getCoachEditor();
      emit(DataReady(data: data));
    } catch (e) {
      print(e.toString());
      emit(FetchError(
        e.toString(),
      ));
    }
  }
}
