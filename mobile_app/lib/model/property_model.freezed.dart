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

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res, Properties>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? photos,
      String description,
      double price,
      String location});
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res, $Val extends Properties>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photos = freezed,
    Object? description = null,
    Object? price = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertiesCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$_PropertiesCopyWith(
          _$_Properties value, $Res Function(_$_Properties) then) =
      __$$_PropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? photos,
      String description,
      double price,
      String location});
}

/// @nodoc
class __$$_PropertiesCopyWithImpl<$Res>
    extends _$PropertiesCopyWithImpl<$Res, _$_Properties>
    implements _$$_PropertiesCopyWith<$Res> {
  __$$_PropertiesCopyWithImpl(
      _$_Properties _value, $Res Function(_$_Properties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photos = freezed,
    Object? description = null,
    Object? price = null,
    Object? location = null,
  }) {
    return _then(_$_Properties(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Properties implements _Properties {
  _$_Properties(
      {required this.id,
      required this.name,
      final List<String>? photos,
      required this.description,
      required this.price,
      required this.location})
      : _photos = photos;

  factory _$_Properties.fromJson(Map<String, dynamic> json) =>
      _$$_PropertiesFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String description;
  @override
  final double price;
  @override
  final String location;

  @override
  String toString() {
    return 'Properties(id: $id, name: $name, photos: $photos, description: $description, price: $price, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Properties &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_photos),
      description,
      price,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      __$$_PropertiesCopyWithImpl<_$_Properties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertiesToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  factory _Properties(
      {required final int id,
      required final String name,
      final List<String>? photos,
      required final String description,
      required final double price,
      required final String location}) = _$_Properties;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$_Properties.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String>? get photos;
  @override
  String get description;
  @override
  double get price;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      throw _privateConstructorUsedError;
}
