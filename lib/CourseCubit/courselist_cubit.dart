import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:meta/meta.dart';

part 'courselist_state.dart';

class CourselistCubit extends Cubit<CourselistState> {
  CourselistCubit({required this.url}) : super(CourselistInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(CourseListFetching());
    try {
      final List data = await web.getCourseList();
      emit(CourseListFetchCompleted(data: data));
    } catch (e) {
      print(e.toString());
      emit(CourseListFetchError(
        e.toString(),
      ));
    }
  }
}
