// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductModel> _$productModelSerializer =
    new _$ProductModelSerializer();

class _$ProductModelSerializer implements StructuredSerializer<ProductModel> {
  @override
  final Iterable<Type> types = const [ProductModel, _$ProductModel];
  @override
  final String wireName = 'ProductModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(ProductPage)),
    ];

    return result;
  }

  @override
  ProductModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductPage)) as ProductPage);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductModel extends ProductModel {
  @override
  final String message;
  @override
  final ProductPage data;

  factory _$ProductModel([void Function(ProductModelBuilder) updates]) =>
      (new ProductModelBuilder()..update(updates)).build();

  _$ProductModel._({this.message, this.data}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('ProductModel', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('ProductModel', 'data');
    }
  }

  @override
  ProductModel rebuild(void Function(ProductModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductModelBuilder toBuilder() => new ProductModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductModel &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductModel')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ProductModelBuilder
    implements Builder<ProductModel, ProductModelBuilder> {
  _$ProductModel _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ProductPageBuilder _data;
  ProductPageBuilder get data => _$this._data ??= new ProductPageBuilder();
  set data(ProductPageBuilder data) => _$this._data = data;

  ProductModelBuilder();

  ProductModelBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductModel;
  }

  @override
  void update(void Function(ProductModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductModel build() {
    _$ProductModel _$result;
    try {
      _$result =
          _$v ?? new _$ProductModel._(message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
