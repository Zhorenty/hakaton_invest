import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'ownership_model.freezed.dart';
part 'ownership_model.g.dart';

@freezed
class Ownership with _$Ownership {
  factory Ownership({
    required int id,
    required String name,
    required double price,
    required String location,
  }) = _Ownership;

  factory Ownership.fromJson(Map<String, dynamic> json) =>
      _$OwnershipFromJson(json);
}
