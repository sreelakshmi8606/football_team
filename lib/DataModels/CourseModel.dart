import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:football_team/DataModels/SessionDataModel.dart';

class CourseDataModel {
  String? Course;
  List<SessionDataModel> ? sessions;
  CourseDataModel.empty();
  CourseDataModel({
    this.Course,
    this.sessions,
  });


  CourseDataModel copyWith({
    String? Course,
    List<SessionDataModel> ? sessions,
  }) {
    return CourseDataModel(
      Course: Course ?? this.Course,
      sessions: sessions ?? this.sessions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Course': Course,
      'sessions': sessions?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory CourseDataModel.fromMap(Map<String, dynamic> map) {
    return CourseDataModel(
      Course: map['Course'],
      sessions: map['sessions'] != null ? List<SessionDataModel> .from(map['sessions']?.map((x) => SessionDataModel .fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseDataModel.fromJson(String source) => CourseDataModel.fromMap(json.decode(source));

  @override
  String toString() => 'CourseDataModel(Course: $Course, sessions: $sessions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CourseDataModel &&
        other.Course == Course &&
        listEquals(other.sessions, sessions);
  }

  @override
  int get hashCode => Course.hashCode ^ sessions.hashCode;
}
