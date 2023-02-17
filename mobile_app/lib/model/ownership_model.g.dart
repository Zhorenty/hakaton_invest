// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownership_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ownership _$$_OwnershipFromJson(Map<String, dynamic> json) => _$_Ownership(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      location: json['location'] as String,
    );

Map<String, dynamic> _$$_OwnershipToJson(_$_Ownership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'location': instance.location,
    };
