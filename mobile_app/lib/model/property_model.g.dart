// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      id: json['id'] as int,
      location: json['location'] as String,
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      potentialPercentProfitPerYear:
          json['potentialPercentProfitPerYear'] as int,
      isCommercial: json['isCommercial'] as bool? ?? false,
      isRisked: json['isRisked'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'price': instance.price,
      'potentialPercentProfitPerYear': instance.potentialPercentProfitPerYear,
      'isCommercial': instance.isCommercial,
      'isRisked': instance.isRisked,
    };
