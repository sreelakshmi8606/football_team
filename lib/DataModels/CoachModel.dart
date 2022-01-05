// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class CoachDataModel {
  String? FirstName;
  String? LastName;
  int? Age;
  String? Gender;
  int? PhoneNumber;
  String? Email;
  String? Address;
  String? Qualification;
  String? Experience;
  String? Achievements;
  String? BloodGroup;
  int? SalaryperHour;
  CoachDataModel.empty();
  CoachDataModel({
    required this.FirstName,
    required this.LastName,
    required this.Age,
    required this.Gender,
    required this.PhoneNumber,
    required this.Email,
    required this.Address,
    required this.Qualification,
    required this.Experience,
    required this.Achievements,
    required this.BloodGroup,
    required this.SalaryperHour,
  });
  CoachDataModel copyWith({
    String? FirstName,
    String? LastName,
    int? Age,
    String? Gender,
    int? PhoneNumber,
    String? Email,
    String? Address,
    String? Qualification,
    String? Experience,
    String? Achievements,
    String? BloodGroup,
    int? SalaryperHour,
  }) {
    return CoachDataModel(
      FirstName: FirstName ?? this.FirstName,
      LastName: LastName ?? this.LastName,
      Age: Age ?? this.Age,
      Gender: Gender ?? this.Gender,
      PhoneNumber: PhoneNumber ?? this.PhoneNumber,
      Email: Email ?? this.Email,
      Address: Address ?? this.Address,
      Qualification: Qualification ?? this.Qualification,
      Experience: Experience ?? this.Experience,
      Achievements: Achievements ?? this.Achievements,
      BloodGroup: BloodGroup ?? this.BloodGroup,
      SalaryperHour: SalaryperHour ?? this.SalaryperHour,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'FirstName': FirstName,
      'LastName': LastName,
      'Age': Age,
      'Gender': Gender,
      'PhoneNumber': PhoneNumber,
      'Email': Email,
      'Address': Address,
      'Qualification': Qualification,
      'Experience': Experience,
      'Achievements': Achievements,
      'BloodGroup': BloodGroup,
      'SalaryperHour': SalaryperHour,
    };
  }

  factory CoachDataModel.fromMap(Map<String, dynamic> map) {
    return CoachDataModel(
      FirstName: map['FirstName'],
      LastName: map['LastName'],
      Age: map['Age'],
      Gender: map['Gender'],
      PhoneNumber: map['PhoneNumber'],
      Email: map['Email'],
      Address: map['Address'],
      Qualification: map['Qualification'],
      Experience: map['Experience'],
      Achievements: map['Achievements'],
      BloodGroup: map['BloodGroup'],
      SalaryperHour: map['SalaryperHour'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoachDataModel.fromJson(String source) =>
      CoachDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FarmDataModel('
        'FirstName: $FirstName,'
        'LastName:$LastName,'
        'Age: $Age,'
        'Gender: $Gender,'
        'PhoneNumber: $PhoneNumber,'
        'Email: $Email,'
        'Address: $Address,'
        'Qualification:$Qualification,'
        'Experience: $Experience,'
        'Achievements: $Achievements,'
        'BloodGroup: $BloodGroup,'
        'SalaryperHour: $SalaryperHour,'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CoachDataModel &&
        other.FirstName == FirstName &&
        other.LastName == LastName &&
        other.Age == Age &&
        other.Gender == Gender &&
        other.PhoneNumber == PhoneNumber &&
        other.Email == Email &&
        other.Address == Address &&
        other.Qualification == Qualification &&
        other.Experience == Experience &&
        other.Achievements == Achievements &&
        other.BloodGroup == BloodGroup &&
        other.SalaryperHour == SalaryperHour;
  }

  @override
  int get hashCode {
    return FirstName.hashCode ^
    LastName.hashCode ^
    Age.hashCode ^
    Gender.hashCode ^
    PhoneNumber.hashCode ^
    Email.hashCode ^
    Address.hashCode ^
    Qualification.hashCode ^
    Experience.hashCode ^
    Achievements.hashCode ^
    BloodGroup.hashCode ^
    SalaryperHour.hashCode;
  }
}
