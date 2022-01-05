// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'dart:core';

class StudentProDataModel {
  String? FirstName;
  String? LastName;
  DateTime ? DOB;
  int? Age;
  String ?Gender;
  int? PhoneNumber;
  String ? GuardianName;
  int? GuardianPhone;
  String ? SchoolName;
  String? Address;
  String?Email;
  DateTime?Admission;
  String ?Timeperiod;
  DateTime?EndingDate;
  double?Fee;
  double? Height;
  double?Weight;
  String ? SportsType;
  String?CoachName;
  String ? TeamName;
  int? EmergencyNumber;
  String?RelationToPlayer;
  String?InsuranceCarrier;
  String?BloodGroup;

  StudentProDataModel.empty();
  StudentProDataModel(
      {required this.FirstName,
        required this.LastName,
        required this.DOB,
        required this.Age,
        required this.Gender,
        required this.PhoneNumber,
        required this.GuardianName,
        required this.GuardianPhone,
        required this.Weight,
        required this.Address,
        required this.BloodGroup,
        required this.Admission,
        required this.CoachName,
        required this.Email,
        required this.EmergencyNumber,
        required this.EndingDate,
        required this.Fee,
        required this.Height,
        required this.InsuranceCarrier,
        required this.RelationToPlayer,
        required this.SchoolName,
        required this.SportsType,
        required this.TeamName,
        required this.Timeperiod,
      });
  StudentProDataModel copyWith({
    String? FirstName,
    String? LastName,
    DateTime ? DOB,
    int? Age,
    String ?Gender,
    int? PhoneNumber,
    String ? GuardianName,
    int? GuardianPhone,
    String ? SchoolName,
    String? Address,
    String?Email,
    DateTime?Admission,
    String ?Timeperiod,
    DateTime?EndingDate,
    double?Fee,
    double? Height,
    double?Weight,
    String ? SportsType,
    String?CoachName,
    String ? TeamName,
    int? EmergencyNumber,
    String?RelationToPlayer,
    String?InsuranceCarrier,
    String?BloodGroup,

  }) {
    return StudentProDataModel(
        FirstName: FirstName ?? this.FirstName,
        LastName: LastName ?? this.LastName,
        DOB: DOB ?? this.DOB,
        Age: Age ?? this.Age,
        Gender: Gender ?? this.Gender,
        PhoneNumber: PhoneNumber ?? this.PhoneNumber,
        GuardianName: GuardianName ?? this.GuardianName,
        GuardianPhone: GuardianPhone??this.GuardianPhone,
        SchoolName:SchoolName??this.SchoolName,
        Address:Address??this.Address,
        Email:Email??this.Email,
        Admission:Admission??this.Admission,
        Timeperiod:Timeperiod??this.Timeperiod,
        EndingDate:EndingDate??this.EndingDate,
        Fee:Fee??this.Fee,
        Height:Height??this.Height,
        Weight:Weight??this.Weight,
        SportsType:SportsType??this.SportsType,
        CoachName:CoachName??this.CoachName,
        TeamName:TeamName??this.TeamName,
        EmergencyNumber:EmergencyNumber??this.EmergencyNumber,
        RelationToPlayer:RelationToPlayer??this.RelationToPlayer,
        InsuranceCarrier:InsuranceCarrier??this.InsuranceCarrier,
        BloodGroup:BloodGroup??this.BloodGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'FirstName': FirstName,
      'LastName': LastName,
      'DOB': DOB,
      'Age': Age,
      'Gender': Gender,
      'GuardianName': GuardianName,
      'PhoneNumber': PhoneNumber,
      'GuardianPhone':GuardianPhone,
      'SchoolName':SchoolName,
      'Address':Address,
      'Email':Email,
      'Admission':Admission,
      'Timeperiod':Timeperiod,
      'EndingDate':EndingDate,
      'Fee':Fee,
      'Height':Height,
      'Weight':Weight,
      'SportsType':SportsType,
      'CoachName':CoachName,
      'TeamName':TeamName,
      'EmergencyNumber':EmergencyNumber,
      'RelationToPlayer':RelationToPlayer,
      'InsuranceCarrier':InsuranceCarrier,
      'BloodGroup':BloodGroup,


    };
  }

  factory StudentProDataModel.fromMap(Map<String, dynamic> map) {
    return StudentProDataModel(
        FirstName: map['FirstName'],
        LastName: map['FirstName'],
        DOB: map['DOB'],
        Age: map['Age'],
        Gender: map['Gender'],
        GuardianName: map['GuardianName'],
        PhoneNumber: map['PhoneNumber'],
        GuardianPhone:map['GuardianPhone'],
        SchoolName:map['SchoolName'],
        Address:map['Address'],
        Email:map['Email'],
        Admission:map['Admission'],
        Timeperiod:map['Timeperiod'],
        EndingDate:map['EndingDate'],
        Fee:map['Fee'],
        Height:map['Height'],
        Weight:map['Weight'],
        SportsType:map['SportsType'],
        CoachName:map['CoachName'],
        TeamName:map['TeamName'],
        EmergencyNumber:map['EmergencyNumber'],
        RelationToPlayer:map['RelationToPlayer'],
        InsuranceCarrier:map['InsuranceCarrier'],
        BloodGroup:map['BloodGroup'],

    );
  }

  String toJson() => json.encode(toMap());

  factory StudentProDataModel.fromJson(String source) =>
      StudentProDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StudentProDataModel('
        'FirstName: $FirstName, '
        'LastName: $LastName,'
        'DOB: $DOB,'
    'Age:$Age,'
    'Gender: $Gender,'
    'GuardianName: $GuardianName,'
    'PhoneNumber: $PhoneNumber,'
    'GuardianPhone:$GuardianPhone,'
    'SchoolName:$SchoolName,'
    'Address:$Address,'
    'Email:$Email,'
    'Admission:$Admission,'
    'Timeperiod:$Timeperiod,'
    'EndingDate:$EndingDate,'
    'Fee:$Fee,'
    'Height:$Height,'
    'Weight:$Weight,'
    'SportsType:$SportsType,'
    'CoachName:$CoachName,'
    'TeamName:$TeamName,'
    'EmergencyNumber:$EmergencyNumber,'
    'RelationToPlayer:$RelationToPlayer,'
    'InsuranceCarrier:$InsuranceCarrier,'
    'BloodGroup:$BloodGroup,'

    ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StudentProDataModel &&
        other.FirstName == FirstName &&
        other.LastName == LastName &&
        other.DOB == DOB &&
        other.Age == Age &&
        other.Gender == Gender &&
        other.GuardianName == GuardianName &&
        other.PhoneNumber == PhoneNumber&&
        other.GuardianPhone == GuardianPhone&&
        other.SchoolName == SchoolName&&
        other.Address == Address&&
        other.Email == Email&&
        other.Admission == Admission&&
        other.Timeperiod == Timeperiod&&
        other.EndingDate == EndingDate&&
        other.Fee == Fee&&
        other.Height == Height&&
        other.Weight == Weight&&
        other.SportsType == SportsType&&
        other.CoachName == CoachName&&
        other.TeamName == TeamName&&
        other.RelationToPlayer == RelationToPlayer&&
        other.InsuranceCarrier == InsuranceCarrier&&
        other.BloodGroup==BloodGroup;
  }

  @override
  int get hashCode {
    return FirstName.hashCode ^
    LastName.hashCode ^
    DOB.hashCode ^
    Age.hashCode ^
    Gender.hashCode ^
    GuardianName.hashCode ^
    PhoneNumber.hashCode^
    GuardianPhone.hashCode^
    SchoolName.hashCode^
    Address.hashCode^
    Email.hashCode^
    Admission.hashCode^
    Timeperiod.hashCode^
    EndingDate.hashCode^
    Fee.hashCode^
    Height.hashCode^
    Weight.hashCode^
    SportsType.hashCode^
    CoachName.hashCode^
    TeamName.hashCode^

    RelationToPlayer.hashCode^
    InsuranceCarrier.hashCode^

    BloodGroup.hashCode;
  }
}
