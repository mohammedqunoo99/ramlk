// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_page;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductPage> _$productPageSerializer = new _$ProductPageSerializer();

class _$ProductPageSerializer implements StructuredSerializer<ProductPage> {
  @override
  final Iterable<Type> types = const [ProductPage, _$ProductPage];
  @override
  final String wireName = 'ProductPage';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductPage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_page',
      serializers.serialize(object.last_page,
          specifiedType: const FullType(int)),
    ];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductList)])));
    }
    return result;
  }

  @override
  ProductPage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductPageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_page':
          result.last_page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductList)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductPage extends ProductPage {
  @override
  final int last_page;
  @override
  final BuiltList<ProductList> data;

  factory _$ProductPage([void Function(ProductPageBuilder) updates]) =>
      (new ProductPageBuilder()..update(updates)).build();

  _$ProductPage._({this.last_page, this.data}) : super._() {
    if (last_page == null) {
      throw new BuiltValueNullFieldError('ProductPage', 'last_page');
    }
  }

  @override
  ProductPage rebuild(void Function(ProductPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductPageBuilder toBuilder() => new ProductPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductPage &&
        last_page == other.last_page &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, last_page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductPage')
          ..add('last_page', last_page)
          ..add('data', data))
        .toString();
  }
}

class ProductPageBuilder implements Builder<ProductPage, ProductPageBuilder> {
  _$ProductPage _$v;

  int _last_page;
  int get last_page => _$this._last_page;
  set last_page(int last_page) => _$this._last_page = last_page;

  ListBuilder<ProductList> _data;
  ListBuilder<ProductList> get data =>
      _$this._data ??= new ListBuilder<ProductList>();
  set data(ListBuilder<ProductList> data) => _$this._data = data;

  ProductPageBuilder();

  ProductPageBuilder get _$this {
    if (_$v != null) {
      _last_page = _$v.last_page;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductPage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductPage;
  }

  @override
  void update(void Function(ProductPageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductPage build() {
    _$ProductPage _$result;
    try {
      _$result = _$v ??
          new _$ProductPage._(last_page: last_page, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
