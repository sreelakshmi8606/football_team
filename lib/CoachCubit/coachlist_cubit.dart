import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:meta/meta.dart';

part 'coachlist_state.dart';

class CoachlistCubit extends Cubit<CoachlistState> {
  CoachlistCubit({required this.url}) : super(CoachlistInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(CoachListFetching());
    try {
      final List data = await web.getCoachList();
      emit(CoachListFetchCompleted(data: data));
    } catch (e) {
      print(e.toString());
      emit(CoachListFetchError(
        e.toString(),
      ));
    }
  }
}
