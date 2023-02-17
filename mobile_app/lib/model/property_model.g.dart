// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Properties _$$_PropertiesFromJson(Map<String, dynamic> json) =>
    _$_Properties(
      id: json['id'] as int,
      name: json['name'] as String,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$_PropertiesToJson(_$_Properties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photos': instance.photos,
      'description': instance.description,
      'price': instance.price,
      'location': instance.location,
    };
