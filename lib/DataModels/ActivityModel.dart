import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:football_team/DataModels/AttributeModel.dart';

class ActivityDataModel {
  List<AttributeDataModel>? Attribute;
  String? ActivityName;
  String? Description;
  int? Duration;
  ActivityDataModel.empty();
  ActivityDataModel({
    this.Attribute,
    this.ActivityName,
    this.Description,
    this.Duration,
  });

  ActivityDataModel copyWith({
    List<AttributeDataModel>? Attribute,
    String? ActivityName,
    String? Description,
    int? Duration,
  }) {
    return ActivityDataModel(
      Attribute: Attribute ?? this.Attribute,
      ActivityName: ActivityName ?? this.ActivityName,
      Description: Description ?? this.Description,
      Duration: Duration ?? this.Duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Attribute': Attribute?.map((x) => x?.toMap())?.toList(),
      'ActivityName': ActivityName,
      'Description': Description,
      'Duration': Duration,
    };
  }

  factory ActivityDataModel.fromMap(Map<String, dynamic> map) {
    return ActivityDataModel(
      Attribute: map['Attribute'] != null
          ? List<AttributeDataModel>.from(
              map['Attribute']?.map((x) => AttributeDataModel.fromMap(x)))
          : null,
      ActivityName: map['ActivityName'],
      Description: map['Description'],
      Duration: map['Duration']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityDataModel.fromJson(String source) =>
      ActivityDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ActivityDataModel('
        'Attribute: $Attribute, '
        'ActivityName: $ActivityName, '
        'Description: $Description, '
        'Duration: $Duration)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ActivityDataModel &&
        listEquals(other.Attribute, Attribute) &&
        other.ActivityName == ActivityName &&
        other.Description == Description &&
        other.Duration == Duration;
  }

  @override
  int get hashCode {
    return Attribute.hashCode ^
        ActivityName.hashCode ^
        Description.hashCode ^
        Duration.hashCode;
  }
}
