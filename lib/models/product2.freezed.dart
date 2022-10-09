// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product2 _$Product2FromJson(Map<String, dynamic> json) {
  return _Product2.fromJson(json);
}

/// @nodoc
mixin _$Product2 {
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Product2CopyWith<Product2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Product2CopyWith<$Res> {
  factory $Product2CopyWith(Product2 value, $Res Function(Product2) then) =
      _$Product2CopyWithImpl<$Res>;
  $Res call({String name, int price});
}

/// @nodoc
class _$Product2CopyWithImpl<$Res> implements $Product2CopyWith<$Res> {
  _$Product2CopyWithImpl(this._value, this._then);

  final Product2 _value;
  // ignore: unused_field
  final $Res Function(Product2) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_Product2CopyWith<$Res> implements $Product2CopyWith<$Res> {
  factory _$$_Product2CopyWith(
          _$_Product2 value, $Res Function(_$_Product2) then) =
      __$$_Product2CopyWithImpl<$Res>;
  @override
  $Res call({String name, int price});
}

/// @nodoc
class __$$_Product2CopyWithImpl<$Res> extends _$Product2CopyWithImpl<$Res>
    implements _$$_Product2CopyWith<$Res> {
  __$$_Product2CopyWithImpl(
      _$_Product2 _value, $Res Function(_$_Product2) _then)
      : super(_value, (v) => _then(v as _$_Product2));

  @override
  _$_Product2 get _value => super._value as _$_Product2;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_Product2(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product2 implements _Product2 {
  const _$_Product2({required this.name, required this.price});

  factory _$_Product2.fromJson(Map<String, dynamic> json) =>
      _$$_Product2FromJson(json);

  @override
  final String name;
  @override
  final int price;

  @override
  String toString() {
    return 'Product2(name: $name, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product2 &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_Product2CopyWith<_$_Product2> get copyWith =>
      __$$_Product2CopyWithImpl<_$_Product2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Product2ToJson(
      this,
    );
  }
}

abstract class _Product2 implements Product2 {
  const factory _Product2(
      {required final String name, required final int price}) = _$_Product2;

  factory _Product2.fromJson(Map<String, dynamic> json) = _$_Product2.fromJson;

  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_Product2CopyWith<_$_Product2> get copyWith =>
      throw _privateConstructorUsedError;
}
