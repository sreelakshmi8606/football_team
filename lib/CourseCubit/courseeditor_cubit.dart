import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'courseeditor_state.dart';

class CourseeditorCubit extends Cubit<CourseeditorState> {
  CourseeditorCubit() : super(CourseeditorInitial());
}
