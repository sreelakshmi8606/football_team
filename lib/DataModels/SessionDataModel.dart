import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:football_team/DataModels/ActivityModel.dart';

class SessionDataModel {
  String? Session;
  int? duration;
  List<ActivityDataModel>? Activity;
  SessionDataModel.empty();
  SessionDataModel({
    required this.Session,
    required this.duration,
    this.Activity,
  });
  SessionDataModel copyWith({
    String? Session,
    int? duration,
    List<ActivityDataModel>? Activity,
  }) {
    return SessionDataModel(
      Session: Session ?? this.Session,
      duration: duration ?? this.duration,
      Activity: Activity ?? this.Activity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Session': Session,
      'duration': duration,
      'Activity': Activity?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory SessionDataModel.fromMap(Map<String, dynamic> map) {
    return SessionDataModel(
      Session: map['Session'],
      duration: map['duration']?.toInt(),
      Activity: map['Activity'] != null ? List<ActivityDataModel>.from(map['Activity']?.map((x) => ActivityDataModel.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SessionDataModel.fromJson(String source) =>
      SessionDataModel.fromMap(json.decode(source));

  @override
  String toString() => 'SessionDataModel('
      'Session: $Session, '
      'duration: $duration,'
      ' Activity: $Activity'
      ')';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SessionDataModel &&
        other.Session == Session &&
        other.duration == duration &&
        listEquals(other.Activity, Activity);
  }

  @override
  int get hashCode => Session.hashCode ^ duration.hashCode ^ Activity.hashCode;
}
