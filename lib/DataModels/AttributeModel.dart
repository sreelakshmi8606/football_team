import 'dart:convert';

class AttributeDataModel {
  String? Name;
  String? Type;
  dynamic? Value;
  AttributeDataModel.empty();
  AttributeDataModel({
    this.Name,
    this.Type,
    this.Value,
  });

  AttributeDataModel copyWith({
    String? Name,
    String? Type,
    dynamic? Value,
  }) {
    return AttributeDataModel(
      Name: Name ?? this.Name,
      Type: Type ?? this.Type,
      Value: Value ?? this.Value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Name': Name,
      'Type': Type,
      'Value': Value,
    };
  }

  factory AttributeDataModel.fromMap(Map<String, dynamic> map) {
    return AttributeDataModel(
      Name: map['Name'],
      Type: map['Type'],
      Value: map['Value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AttributeDataModel.fromJson(String source) =>
      AttributeDataModel.fromMap(json.decode(source));

  @override
  String toString() => 'AttributeDataModel('
      'Name: $Name, '
      'Type: $Type, '
      'Value: $Value'
      ')';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AttributeDataModel &&
        other.Name == Name &&
        other.Type == Type &&
        other.Value == Value;
  }

  @override
  int get hashCode => Name.hashCode ^ Type.hashCode ^ Value.hashCode;
}
