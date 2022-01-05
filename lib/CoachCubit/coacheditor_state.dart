part of 'coacheditor_cubit.dart';

@immutable
abstract class CoacheditorState {}

class CoacheditorInitial extends CoacheditorState {}

class Fetching extends CoacheditorState {}

class DataReady extends CoacheditorState {
  final List<CoachDataModel> data;
  DataReady({required this.data});
}

class FetchError extends CoacheditorState {
  final String msg;

  FetchError(this.msg);
}
