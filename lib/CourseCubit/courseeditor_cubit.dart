import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/CourseModel.dart';
import 'package:football_team/DataModels/SessionDataModel.dart';
import 'package:meta/meta.dart';

part 'courseeditor_state.dart';

class CourseeditorCubit extends Cubit<CourseeditorState> {
  CourseeditorCubit({required this.url}) : super(CourseeditorInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(Fetching());
    try {
      final List<CourseDataModel> data = (await web.getCourseEditor()).cast<CourseDataModel>();
      emit(DataReady(data: data));
    } catch (e) {
      print(e.toString());
      emit(FetchError(
        e.toString(),
      ));
    }
  }
}
