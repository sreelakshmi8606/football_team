part of 'batcheditor_cubit.dart';

@immutable
abstract class BatcheditorState {}

class BatcheditorInitial extends BatcheditorState {}
class BatchFetching extends BatcheditorState {}

class BatchDataReady extends BatcheditorState {
  final List<BatchDataModel> data;
  BatchDataReady({required this.data});
}

class BatchFetchError extends BatcheditorState {
  final String msg;

  BatchFetchError(this.msg);
}
