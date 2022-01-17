part of 'coacheditor_cubit.dart';

@immutable
abstract class CoacheditorState {}

class CoacheditorInitial extends CoacheditorState {}

class CoachEditorFetching extends CoacheditorState {}

class CoachEditorDataReady extends CoacheditorState {
  final List<CoachDataModel> data;
  CoachEditorDataReady({required this.data});
}

class CoachEditorFetchError extends CoacheditorState {
  final String msg;

  CoachEditorFetchError(this.msg);
}
