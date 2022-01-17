part of 'courselist_cubit.dart';

@immutable
abstract class CourselistState {}

class CourselistInitial extends CourselistState {}

class CourseListFetching extends CourselistState {}

class CourseListFetchCompleted extends CourselistState {
  final List data;
  CourseListFetchCompleted({required this.data});
}

class CourseListFetchError extends CourselistState {
  final String msg;

  CourseListFetchError(this.msg);
}
