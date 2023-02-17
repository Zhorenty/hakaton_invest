import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_model.freezed.dart';
part 'property_model.g.dart';

@freezed
class Properties with _$Properties {
  factory Properties({
    required int id,
    required String name,
    required String description,
    required double price,
    required String location,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
