import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:meta/meta.dart';

part 'batchlist_state.dart';

class BatchlistCubit extends Cubit<BatchlistState> {
  BatchlistCubit({required this.url}) : super(BatchlistInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(Fetching());
    try {
      final List data = await web.getBatchList();
      emit(FetchCompleted(data: data));
    } catch (e) {
      print(e.toString());
      emit(FetchError(
        e.toString(),
      ));
    }
  }
}

