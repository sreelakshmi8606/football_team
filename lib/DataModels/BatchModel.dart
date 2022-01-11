// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:football_team/DataModels/StudentPro.dart';

class BatchDataModel {
  String? BatchName;
  String? Course;
  String? Coach;
  List<StudentProDataModel>? Student;
  String? AllocatedDates;
  BatchDataModel.empty();
  BatchDataModel({
    this.BatchName,
    this.Course,
    this.Coach,
    this.Student,
    this.AllocatedDates,
  });
  BatchDataModel copyWith({
    String? BatchName,
    String? Course,
    String? Coach,
    List<StudentProDataModel>? Student,
    String? AllocatedDates,
  }) {
    return BatchDataModel(
      BatchName: BatchName ?? this.BatchName,
      Course: Course ?? this.Course,
      Coach: Coach ?? this.Coach,
      Student: Student ?? this.Student,
      AllocatedDates: AllocatedDates ?? this.AllocatedDates,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'BatchName': BatchName,
      'Course': Course,
      'Coach': Coach,
      'Student': Student?.map((x) => x?.toMap())?.toList(),
      'AllocatedDates': AllocatedDates,
    };
  }

  factory BatchDataModel.fromMap(Map<String, dynamic> map) {
    return BatchDataModel(
      BatchName: map['BatchName'],
      Course: map['Course'],
      Coach: map['Coach'],
      Student: map['Student'] != null ? List<StudentProDataModel>.from(map['Student']?.map((x) => StudentProDataModel.fromMap(x))) : null,
      AllocatedDates: map['AllocatedDates'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BatchDataModel.fromJson(String source) =>
      BatchDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BatchDataModel('
        'BatchName: $BatchName,'
        ' Course: $Course, '
        'Coach: $Coach, '
        'Student: $Student, '
        'AllocatedDates: $AllocatedDates'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BatchDataModel &&
        other.BatchName == BatchName &&
        other.Course == Course &&
        other.Coach == Coach &&
        listEquals(other.Student, Student) &&
        other.AllocatedDates == AllocatedDates;
  }

  @override
  int get hashCode {
    return BatchName.hashCode ^
    Course.hashCode ^
    Coach.hashCode ^
    Student.hashCode ^
    AllocatedDates.hashCode;
  }
}
