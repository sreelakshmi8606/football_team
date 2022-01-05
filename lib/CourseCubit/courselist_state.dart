part of 'courselist_cubit.dart';

@immutable
abstract class CourselistState {}

class CourselistInitial extends CourselistState {}

class Fetching extends CourselistState {}

class FetchCompleted extends CourselistState {
  final List data;
  FetchCompleted({required this.data});
}

class FetchError extends CourselistState {
  final String msg;

  FetchError(this.msg);
}
