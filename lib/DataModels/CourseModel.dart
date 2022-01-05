import 'dart:convert';

import 'package:football_team/DataModels/SessionDataModel.dart';

class CourseDataModel {
  String? Course;
  List<SessionDataModel> sessions;
  CourseDataModel.empty();
  CourseDataModel({
    required this.Course,
    required this.sessions
  });
  CourseDataModel copyWith({
    String? Course,
    String? listOfSession,

  }) {
    return CourseDataModel(
      Course: Course ?? this.Course,
      sessions: SessionDataModel??this.sessions

    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Course': Course,
      'listOfSession':listOfSession,
    };
  }

  factory CourseDataModel.fromMap(Map<String, dynamic> map) {
    return CourseDataModel(
      Course: map['Course'],
        listOfSession:map['listOfSession']
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseDataModel.fromJson(String source) =>
      CourseDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseDataModel('
        'Course: $Course,'
    'listOfSession:$listOfSession,'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CourseDataModel &&
        other.Course == Course &&
    other.listOfSession==listOfSession;
  }

  @override
  int get hashCode {
    return Course.hashCode ^
    listOfSession.hashCode;
  }
}
