// GENERATED CODE - DO NOT MODIFY BY HAND

part of slider_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SliderList> _$sliderListSerializer = new _$SliderListSerializer();

class _$SliderListSerializer implements StructuredSerializer<SliderList> {
  @override
  final Iterable<Type> types = const [SliderList, _$SliderList];
  @override
  final String wireName = 'SliderList';

  @override
  Iterable<Object> serialize(Serializers serializers, SliderList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.category_id != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(object.category_id,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.slider != null) {
      result
        ..add('slider')
        ..add(serializers.serialize(object.slider,
            specifiedType: const FullType(String)));
    }
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(ProductList)));
    }
    return result;
  }

  @override
  SliderList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SliderListBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_id':
          result.category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slider':
          result.slider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'products':
          result.products.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductList)) as ProductList);
          break;
      }
    }

    return result.build();
  }
}

class _$SliderList extends SliderList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String category_id;
  @override
  final String status;
  @override
  final int price;
  @override
  final String description;
  @override
  final String image;
  @override
  final String slider;
  @override
  final ProductList products;

  factory _$SliderList([void Function(SliderListBuilder) updates]) =>
      (new SliderListBuilder()..update(updates)).build();

  _$SliderList._(
      {this.id,
      this.name,
      this.category_id,
      this.status,
      this.price,
      this.description,
      this.image,
      this.slider,
      this.products})
      : super._() {
    if (image == null) {
      throw new BuiltValueNullFieldError('SliderList', 'image');
    }
  }

  @override
  SliderList rebuild(void Function(SliderListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderListBuilder toBuilder() => new SliderListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderList &&
        id == other.id &&
        name == other.name &&
        category_id == other.category_id &&
        status == other.status &&
        price == other.price &&
        description == other.description &&
        image == other.image &&
        slider == other.slider &&
        products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), name.hashCode),
                                category_id.hashCode),
                            status.hashCode),
                        price.hashCode),
                    description.hashCode),
                image.hashCode),
            slider.hashCode),
        products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderList')
          ..add('id', id)
          ..add('name', name)
          ..add('category_id', category_id)
          ..add('status', status)
          ..add('price', price)
          ..add('description', description)
          ..add('image', image)
          ..add('slider', slider)
          ..add('products', products))
        .toString();
  }
}

class SliderListBuilder implements Builder<SliderList, SliderListBuilder> {
  _$SliderList _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _category_id;
  String get category_id => _$this._category_id;
  set category_id(String category_id) => _$this._category_id = category_id;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _slider;
  String get slider => _$this._slider;
  set slider(String slider) => _$this._slider = slider;

  ProductListBuilder _products;
  ProductListBuilder get products =>
      _$this._products ??= new ProductListBuilder();
  set products(ProductListBuilder products) => _$this._products = products;

  SliderListBuilder();

  SliderListBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _category_id = _$v.category_id;
      _status = _$v.status;
      _price = _$v.price;
      _description = _$v.description;
      _image = _$v.image;
      _slider = _$v.slider;
      _products = _$v.products?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SliderList;
  }

  @override
  void update(void Function(SliderListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderList build() {
    _$SliderList _$result;
    try {
      _$result = _$v ??
          new _$SliderList._(
              id: id,
              name: name,
              category_id: category_id,
              status: status,
              price: price,
              description: description,
              image: image,
              slider: slider,
              products: _products?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        _products?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SliderList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
