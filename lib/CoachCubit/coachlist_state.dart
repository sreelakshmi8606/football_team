part of 'coachlist_cubit.dart';

@immutable
abstract class CoachlistState {}

class CoachlistInitial extends CoachlistState {}
class CoachListFetching extends CoachlistState {}

class CoachListFetchCompleted extends CoachlistState {
  final List data;
  CoachListFetchCompleted({required this.data});
}

class CoachListFetchError extends CoachlistState {
  final String msg;

  CoachListFetchError(this.msg);
}
