part of 'studenteditor_cubit.dart';

@immutable
abstract class StudenteditorState {}

class StudenteditorInitial extends StudenteditorState {}
class Fetching extends StudenteditorState {}

class DataReady extends StudenteditorState {
  final List<Map> data;
  DataReady({required this.data});
}

class FetchError extends StudenteditorState {
  final String msg;

  FetchError(this.msg);
}
