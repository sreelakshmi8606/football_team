import 'package:bloc/bloc.dart';
import 'package:football_team/Common/WebService.dart';
import 'package:football_team/DataModels/BatchModel.dart';
import 'package:meta/meta.dart';

part 'batcheditor_state.dart';

class BatcheditorCubit extends Cubit<BatcheditorState> {
  BatcheditorCubit({required this.url}) : super(BatcheditorInitial());
  WebserviceHelper web = WebserviceHelper();
  final String url;
  void fetchData() async {
    emit(BatchFetching());
    try {
      final List<BatchDataModel> data = (await web.getBatchEditor()).cast<BatchDataModel>();
      emit(BatchDataReady(data: data));
    } catch (e) {
      print(e.toString());
      emit(BatchFetchError(
        e.toString(),
      ));
    }
  }
}

