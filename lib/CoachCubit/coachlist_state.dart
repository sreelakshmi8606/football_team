part of 'coachlist_cubit.dart';

@immutable
abstract class CoachlistState {}

class CoachlistInitial extends CoachlistState {}
class Fetching extends CoachlistState {}

class FetchCompleted extends CoachlistState {
  final List data;
  FetchCompleted({required this.data});
}

class FetchError extends CoachlistState {
  final String msg;

  FetchError(this.msg);
}
