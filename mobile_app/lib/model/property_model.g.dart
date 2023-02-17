// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrls': instance.imageUrls,
      'description': instance.description,
      'price': instance.price,
      'location': instance.location,
    };
