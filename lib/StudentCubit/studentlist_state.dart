part of 'studentlist_cubit.dart';

@immutable
abstract class StudentlistState {}

class StudentlistInitial extends StudentlistState {}

class Fetching extends StudentlistState {}

class FetchCompleted extends StudentlistState {
  final List data;
  FetchCompleted({required this.data});
}

class FetchError extends StudentlistState {
  final String msg;

  FetchError(this.msg);
}
