import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:meta/meta.dart';

part 'studenteditor_state.dart';

class StudenteditorCubit extends Cubit<StudenteditorState> {
  StudenteditorCubit({required this.url}) : super(StudenteditorInitial());
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
