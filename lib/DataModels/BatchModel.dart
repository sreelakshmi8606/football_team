// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class BatchDataModel {
  String? Batch;
  BatchDataModel.empty();
  BatchDataModel({
    required this.Batch,
  });
  BatchDataModel copyWith({
    String? Batch,
  }) {
    return BatchDataModel(
      Batch: Batch ?? this.Batch,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Batch': Batch,
    };
  }

  factory BatchDataModel.fromMap(Map<String, dynamic> map) {
    return BatchDataModel(
      Batch: map['Batch'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BatchDataModel.fromJson(String source) =>
      BatchDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BatchDataModel('
        'Batch: $Batch,'
        ')';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BatchDataModel && other.Batch == Batch;
  }

  @override
  int get hashCode {
    return Batch.hashCode;
  }
}
