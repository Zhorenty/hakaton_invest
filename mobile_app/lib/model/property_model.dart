import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class Property with _$Property {
  factory Property({
    required int id,
    required String location,
    String? imageUrl,
    required String description,
    required String price,
    required int potentialPercentProfitPerYear,
    @Default(false) bool? isCommercial,
    @Default(false) bool? isRisked,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}
