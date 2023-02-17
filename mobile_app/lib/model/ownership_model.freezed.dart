// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ownership_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ownership _$OwnershipFromJson(Map<String, dynamic> json) {
  return _Ownership.fromJson(json);
}

/// @nodoc
mixin _$Ownership {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get photo => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnershipCopyWith<Ownership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnershipCopyWith<$Res> {
  factory $OwnershipCopyWith(Ownership value, $Res Function(Ownership) then) =
      _$OwnershipCopyWithImpl<$Res, Ownership>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? photo,
      double price,
      String location});
}

/// @nodoc
class _$OwnershipCopyWithImpl<$Res, $Val extends Ownership>
    implements $OwnershipCopyWith<$Res> {
  _$OwnershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photo = freezed,
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
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
abstract class _$$_OwnershipCopyWith<$Res> implements $OwnershipCopyWith<$Res> {
  factory _$$_OwnershipCopyWith(
          _$_Ownership value, $Res Function(_$_Ownership) then) =
      __$$_OwnershipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? photo,
      double price,
      String location});
}

/// @nodoc
class __$$_OwnershipCopyWithImpl<$Res>
    extends _$OwnershipCopyWithImpl<$Res, _$_Ownership>
    implements _$$_OwnershipCopyWith<$Res> {
  __$$_OwnershipCopyWithImpl(
      _$_Ownership _value, $Res Function(_$_Ownership) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photo = freezed,
    Object? price = null,
    Object? location = null,
  }) {
    return _then(_$_Ownership(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
class _$_Ownership implements _Ownership {
  _$_Ownership(
      {required this.id,
      required this.name,
      final List<String>? photo,
      required this.price,
      required this.location})
      : _photo = photo;

  factory _$_Ownership.fromJson(Map<String, dynamic> json) =>
      _$$_OwnershipFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String>? _photo;
  @override
  List<String>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double price;
  @override
  final String location;

  @override
  String toString() {
    return 'Ownership(id: $id, name: $name, photo: $photo, price: $price, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ownership &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._photo, _photo) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_photo), price, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnershipCopyWith<_$_Ownership> get copyWith =>
      __$$_OwnershipCopyWithImpl<_$_Ownership>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwnershipToJson(
      this,
    );
  }
}

abstract class _Ownership implements Ownership {
  factory _Ownership(
      {required final int id,
      required final String name,
      final List<String>? photo,
      required final double price,
      required final String location}) = _$_Ownership;

  factory _Ownership.fromJson(Map<String, dynamic> json) =
      _$_Ownership.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String>? get photo;
  @override
  double get price;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$_OwnershipCopyWith<_$_Ownership> get copyWith =>
      throw _privateConstructorUsedError;
}
