// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  int get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  int get potentialPercentProfitPerYear => throw _privateConstructorUsedError;
  bool? get isCommercial => throw _privateConstructorUsedError;
  bool? get isRisked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {int id,
      String location,
      String? imageUrl,
      String description,
      String price,
      int potentialPercentProfitPerYear,
      bool? isCommercial,
      bool? isRisked});
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? imageUrl = freezed,
    Object? description = null,
    Object? price = null,
    Object? potentialPercentProfitPerYear = null,
    Object? isCommercial = freezed,
    Object? isRisked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      potentialPercentProfitPerYear: null == potentialPercentProfitPerYear
          ? _value.potentialPercentProfitPerYear
          : potentialPercentProfitPerYear // ignore: cast_nullable_to_non_nullable
              as int,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRisked: freezed == isRisked
          ? _value.isRisked
          : isRisked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$$_PropertyCopyWith(
          _$_Property value, $Res Function(_$_Property) then) =
      __$$_PropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String location,
      String? imageUrl,
      String description,
      String price,
      int potentialPercentProfitPerYear,
      bool? isCommercial,
      bool? isRisked});
}

/// @nodoc
class __$$_PropertyCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$_Property>
    implements _$$_PropertyCopyWith<$Res> {
  __$$_PropertyCopyWithImpl(
      _$_Property _value, $Res Function(_$_Property) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? imageUrl = freezed,
    Object? description = null,
    Object? price = null,
    Object? potentialPercentProfitPerYear = null,
    Object? isCommercial = freezed,
    Object? isRisked = freezed,
  }) {
    return _then(_$_Property(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      potentialPercentProfitPerYear: null == potentialPercentProfitPerYear
          ? _value.potentialPercentProfitPerYear
          : potentialPercentProfitPerYear // ignore: cast_nullable_to_non_nullable
              as int,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRisked: freezed == isRisked
          ? _value.isRisked
          : isRisked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Property implements _Property {
  _$_Property(
      {required this.id,
      required this.location,
      this.imageUrl,
      required this.description,
      required this.price,
      required this.potentialPercentProfitPerYear,
      this.isCommercial = false,
      this.isRisked = false});

  factory _$_Property.fromJson(Map<String, dynamic> json) =>
      _$$_PropertyFromJson(json);

  @override
  final int id;
  @override
  final String location;
  @override
  final String? imageUrl;
  @override
  final String description;
  @override
  final String price;
  @override
  final int potentialPercentProfitPerYear;
  @override
  @JsonKey()
  final bool? isCommercial;
  @override
  @JsonKey()
  final bool? isRisked;

  @override
  String toString() {
    return 'Property(id: $id, location: $location, imageUrl: $imageUrl, description: $description, price: $price, potentialPercentProfitPerYear: $potentialPercentProfitPerYear, isCommercial: $isCommercial, isRisked: $isRisked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Property &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.potentialPercentProfitPerYear,
                    potentialPercentProfitPerYear) ||
                other.potentialPercentProfitPerYear ==
                    potentialPercentProfitPerYear) &&
            (identical(other.isCommercial, isCommercial) ||
                other.isCommercial == isCommercial) &&
            (identical(other.isRisked, isRisked) ||
                other.isRisked == isRisked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      location,
      imageUrl,
      description,
      price,
      potentialPercentProfitPerYear,
      isCommercial,
      isRisked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      __$$_PropertyCopyWithImpl<_$_Property>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertyToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  factory _Property(
      {required final int id,
      required final String location,
      final String? imageUrl,
      required final String description,
      required final String price,
      required final int potentialPercentProfitPerYear,
      final bool? isCommercial,
      final bool? isRisked}) = _$_Property;

  factory _Property.fromJson(Map<String, dynamic> json) = _$_Property.fromJson;

  @override
  int get id;
  @override
  String get location;
  @override
  String? get imageUrl;
  @override
  String get description;
  @override
  String get price;
  @override
  int get potentialPercentProfitPerYear;
  @override
  bool? get isCommercial;
  @override
  bool? get isRisked;
  @override
  @JsonKey(ignore: true)
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      throw _privateConstructorUsedError;
}
