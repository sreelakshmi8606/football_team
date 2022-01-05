part of 'batcheditor_cubit.dart';

@immutable
abstract class BatcheditorState {}

class BatcheditorInitial extends BatcheditorState {}
class Fetching extends BatcheditorState {}

class DataReady extends BatcheditorState {
  final List<Map> data;
  DataReady({required this.data});
}

class FetchError extends BatcheditorState {
  final String msg;

  FetchError(this.msg);
}
