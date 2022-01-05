part of 'batchlist_cubit.dart';

@immutable
abstract class BatchlistState {}

class BatchlistInitial extends BatchlistState {}
class Fetching extends BatchlistState {}

class FetchCompleted extends BatchlistState {
  final List data;
  FetchCompleted({required this.data});
}

class FetchError extends BatchlistState {
  final String msg;

  FetchError(this.msg);
}
