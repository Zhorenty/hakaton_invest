import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class Property with _$Property {
  factory Property({
    required int id,
    required String name,
    List<String>? imageUrls,
    required String description,
    required double price,
    required String location,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}
