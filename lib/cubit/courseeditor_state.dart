part of 'courseeditor_cubit.dart';

@immutable
abstract class CourseeditorState {}

class CourseeditorInitial extends CourseeditorState {}
class Fetching extends CourseeditorState {}

class DataReady extends CourseeditorState {
  final List<CourseDataModel> data;
  DataReady({required this.data});
}

class FetchError extends CourseeditorState {
  final String msg;

  FetchError(this.msg);
}
