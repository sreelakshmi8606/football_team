import 'dart:convert';

class SessionDataModel {
  String? Session;
  int? duration;

  SessionDataModel.empty();
  SessionDataModel({
    required this.Session,
    required this.duration,
  });
  SessionDataModel copyWith({
    String? Session,
  }) {
    return SessionDataModel(
      Session: Session ?? this.Session,
      duration: duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Session': Session,
      'duration': duration,
    };
  }

  factory SessionDataModel.fromMap(Map<String, dynamic> map) {
    return SessionDataModel(
      Session: map['Session'],
      duration: map['duration'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SessionDataModel.fromJson(String source) =>
      SessionDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FarmDataModel('
        'Session: $Session,'
        'duration: $duration,'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SessionDataModel &&
        other.Session == Session &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    return Session.hashCode ^ duration.hashCode;
  }
}
