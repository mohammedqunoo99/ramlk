// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductOptions> _$productOptionsSerializer =
    new _$ProductOptionsSerializer();

class _$ProductOptionsSerializer
    implements StructuredSerializer<ProductOptions> {
  @override
  final Iterable<Type> types = const [ProductOptions, _$ProductOptions];
  @override
  final String wireName = 'ProductOptions';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.product_id != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.product_id,
            specifiedType: const FullType(String)));
    }
    if (object.option != null) {
      result
        ..add('option')
        ..add(serializers.serialize(object.option,
            specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductOptions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'product_id':
          result.product_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'option':
          result.option = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductOptions extends ProductOptions {
  @override
  final int id;
  @override
  final String product_id;
  @override
  final String option;
  @override
  final String value;

  factory _$ProductOptions([void Function(ProductOptionsBuilder) updates]) =>
      (new ProductOptionsBuilder()..update(updates)).build();

  _$ProductOptions._({this.id, this.product_id, this.option, this.value})
      : super._();

  @override
  ProductOptions rebuild(void Function(ProductOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductOptionsBuilder toBuilder() =>
      new ProductOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductOptions &&
        id == other.id &&
        product_id == other.product_id &&
        option == other.option &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), product_id.hashCode), option.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductOptions')
          ..add('id', id)
          ..add('product_id', product_id)
          ..add('option', option)
          ..add('value', value))
        .toString();
  }
}

class ProductOptionsBuilder
    implements Builder<ProductOptions, ProductOptionsBuilder> {
  _$ProductOptions _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _product_id;
  String get product_id => _$this._product_id;
  set product_id(String product_id) => _$this._product_id = product_id;

  String _option;
  String get option => _$this._option;
  set option(String option) => _$this._option = option;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ProductOptionsBuilder();

  ProductOptionsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _product_id = _$v.product_id;
      _option = _$v.option;
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductOptions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductOptions;
  }

  @override
  void update(void Function(ProductOptionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductOptions build() {
    final _$result = _$v ??
        new _$ProductOptions._(
            id: id, product_id: product_id, option: option, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
