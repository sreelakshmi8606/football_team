part of 'batchlist_cubit.dart';

@immutable
abstract class BatchlistState {}

class BatchlistInitial extends BatchlistState {}
class BatchListFetching extends BatchlistState {}

class BatchFetchCompleted extends BatchlistState {
  final List data;
  BatchFetchCompleted({required this.data});
}

class BatchListFetchError extends BatchlistState {
  final String msg;

  BatchListFetchError(this.msg);
}
