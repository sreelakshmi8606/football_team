import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'courselist_state.dart';

class CourselistCubit extends Cubit<CourselistState> {
  CourselistCubit() : super(CourselistInitial());
}
