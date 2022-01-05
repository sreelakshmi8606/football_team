import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:meta/meta.dart';

part 'studentlist_state.dart';

class StudentlistCubit extends Cubit<StudentlistState> {
  StudentlistCubit({required this.url}) : super(StudentlistInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(Fetching());
    try {
      final List data = await web.getStudentList();
      emit(FetchCompleted(data: data));
    } catch (e) {
      print(e.toString());
      emit(FetchError(
        e.toString(),
      ));
    }
  }
}

