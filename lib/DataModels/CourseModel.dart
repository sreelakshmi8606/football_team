import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:football_team/DataModels/SessionDataModel.dart';

class CourseDataModel {
  String? Course;
  List<SessionDataModel> ? sessions;
  int? MinAge;
  int? MaxAge;
  int? Duration;
  CourseDataModel.empty();
  CourseDataModel({
    this.Course,
    this.sessions,
    this.MinAge,
    this.MaxAge,
    this.Duration,
  });

  CourseDataModel copyWith({
    String? Course,
    List<SessionDataModel> ? sessions,
    int? MinAge,
    int? MaxAge,
    int? Duration,
  }) {
    return CourseDataModel(
      Course: Course ?? this.Course,
      sessions: sessions ?? this.sessions,
      MinAge: MinAge ?? this.MinAge,
      MaxAge: MaxAge ?? this.MaxAge,
      Duration: Duration ?? this.Duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Course': Course,
      'sessions': sessions?.map((x) => x?.toMap())?.toList(),
      'MinAge': MinAge,
      'MaxAge': MaxAge,
      'Duration': Duration,
    };
  }

  factory CourseDataModel.fromMap(Map<String, dynamic> map) {
    return CourseDataModel(
      Course: map['Course'],
      sessions: map['sessions'] != null ? List<SessionDataModel> .from(map['sessions']?.map((x) => SessionDataModel .fromMap(x))) : null,
      MinAge: map['MinAge']?.toInt(),
      MaxAge: map['MaxAge']?.toInt(),
      Duration: map['Duration']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseDataModel.fromJson(String source) => CourseDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseDataModel(Course: $Course, sessions: $sessions, MinAge: $MinAge, MaxAge: $MaxAge, Duration: $Duration)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CourseDataModel &&
        other.Course == Course &&
        listEquals(other.sessions, sessions) &&
        other.MinAge == MinAge &&
        other.MaxAge == MaxAge &&
        other.Duration == Duration;
  }

  @override
  int get hashCode {
    return Course.hashCode ^
    sessions.hashCode ^
    MinAge.hashCode ^
    MaxAge.hashCode ^
    Duration.hashCode;
  }
}

