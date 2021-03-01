// GENERATED CODE - DO NOT MODIFY BY HAND

part of product_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductList> _$productListSerializer = new _$ProductListSerializer();

class _$ProductListSerializer implements StructuredSerializer<ProductList> {
  @override
  final Iterable<Type> types = const [ProductList, _$ProductList];
  @override
  final String wireName = 'ProductList';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'product_options',
      serializers.serialize(object.product_options,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ProductOptions)])),
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
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.category_id != null) {
      result
        ..add('category_id')
        ..add(serializers.serialize(object.category_id,
            specifiedType: const FullType(int)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.news != null) {
      result
        ..add('new')
        ..add(serializers.serialize(object.news,
            specifiedType: const FullType(int)));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(int)));
    }
    if (object.old_price != null) {
      result
        ..add('old_price')
        ..add(serializers.serialize(object.old_price,
            specifiedType: const FullType(int)));
    }
    if (object.best_seller != null) {
      result
        ..add('best_seller')
        ..add(serializers.serialize(object.best_seller,
            specifiedType: const FullType(int)));
    }
    if (object.best_price != null) {
      result
        ..add('best_price')
        ..add(serializers.serialize(object.best_price,
            specifiedType: const FullType(int)));
    }
    if (object.auction != null) {
      result
        ..add('auction')
        ..add(serializers.serialize(object.auction,
            specifiedType: const FullType(int)));
    }
    if (object.user_id != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.user_id,
            specifiedType: const FullType(int)));
    }
    if (object.percentage != null) {
      result
        ..add('percentage')
        ..add(serializers.serialize(object.percentage,
            specifiedType: const FullType(double)));
    }
    if (object.product != null) {
      result
        ..add('product')
        ..add(serializers.serialize(object.product,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.images != null) {
      result
        ..add('images')
        ..add(serializers.serialize(object.images,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.option_category != null) {
      result
        ..add('option_category')
        ..add(serializers.serialize(object.option_category,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ProductList deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductListBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category_id':
          result.category_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'new':
          result.news = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'old_price':
          result.old_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'best_seller':
          result.best_seller = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'best_price':
          result.best_price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auction':
          result.auction = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'percentage':
          result.percentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'product':
          result.product = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'option_category':
          result.option_category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_options':
          result.product_options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductOptions)]))
              as BuiltList<Object>);
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductList extends ProductList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final int category_id;
  @override
  final int status;
  @override
  final int news;
  @override
  final int price;
  @override
  final int old_price;
  @override
  final int best_seller;
  @override
  final int best_price;
  @override
  final int auction;
  @override
  final int user_id;
  @override
  final double percentage;
  @override
  final String product;
  @override
  final String description;
  @override
  final String image;
  @override
  final BuiltList<String> images;
  @override
  final String slug;
  @override
  final String color;
  @override
  final String option_category;
  @override
  final BuiltList<ProductOptions> product_options;
  @override
  final int gender;

  factory _$ProductList([void Function(ProductListBuilder) updates]) =>
      (new ProductListBuilder()..update(updates)).build();

  _$ProductList._(
      {this.id,
      this.name,
      this.type,
      this.category_id,
      this.status,
      this.news,
      this.price,
      this.old_price,
      this.best_seller,
      this.best_price,
      this.auction,
      this.user_id,
      this.percentage,
      this.product,
      this.description,
      this.image,
      this.images,
      this.slug,
      this.color,
      this.option_category,
      this.product_options,
      this.gender})
      : super._() {
    if (product_options == null) {
      throw new BuiltValueNullFieldError('ProductList', 'product_options');
    }
  }

  @override
  ProductList rebuild(void Function(ProductListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListBuilder toBuilder() => new ProductListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductList &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        category_id == other.category_id &&
        status == other.status &&
        news == other.news &&
        price == other.price &&
        old_price == other.old_price &&
        best_seller == other.best_seller &&
        best_price == other.best_price &&
        auction == other.auction &&
        user_id == other.user_id &&
        percentage == other.percentage &&
        product == other.product &&
        description == other.description &&
        image == other.image &&
        images == other.images &&
        slug == other.slug &&
        color == other.color &&
        option_category == other.option_category &&
        product_options == other.product_options &&
        gender == other.gender;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), type.hashCode),
                                                                                category_id.hashCode),
                                                                            status.hashCode),
                                                                        news.hashCode),
                                                                    price.hashCode),
                                                                old_price.hashCode),
                                                            best_seller.hashCode),
                                                        best_price.hashCode),
                                                    auction.hashCode),
                                                user_id.hashCode),
                                            percentage.hashCode),
                                        product.hashCode),
                                    description.hashCode),
                                image.hashCode),
                            images.hashCode),
                        slug.hashCode),
                    color.hashCode),
                option_category.hashCode),
            product_options.hashCode),
        gender.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductList')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('category_id', category_id)
          ..add('status', status)
          ..add('news', news)
          ..add('price', price)
          ..add('old_price', old_price)
          ..add('best_seller', best_seller)
          ..add('best_price', best_price)
          ..add('auction', auction)
          ..add('user_id', user_id)
          ..add('percentage', percentage)
          ..add('product', product)
          ..add('description', description)
          ..add('image', image)
          ..add('images', images)
          ..add('slug', slug)
          ..add('color', color)
          ..add('option_category', option_category)
          ..add('product_options', product_options)
          ..add('gender', gender))
        .toString();
  }
}

class ProductListBuilder implements Builder<ProductList, ProductListBuilder> {
  _$ProductList _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _category_id;
  int get category_id => _$this._category_id;
  set category_id(int category_id) => _$this._category_id = category_id;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _news;
  int get news => _$this._news;
  set news(int news) => _$this._news = news;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _old_price;
  int get old_price => _$this._old_price;
  set old_price(int old_price) => _$this._old_price = old_price;

  int _best_seller;
  int get best_seller => _$this._best_seller;
  set best_seller(int best_seller) => _$this._best_seller = best_seller;

  int _best_price;
  int get best_price => _$this._best_price;
  set best_price(int best_price) => _$this._best_price = best_price;

  int _auction;
  int get auction => _$this._auction;
  set auction(int auction) => _$this._auction = auction;

  int _user_id;
  int get user_id => _$this._user_id;
  set user_id(int user_id) => _$this._user_id = user_id;

  double _percentage;
  double get percentage => _$this._percentage;
  set percentage(double percentage) => _$this._percentage = percentage;

  String _product;
  String get product => _$this._product;
  set product(String product) => _$this._product = product;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _option_category;
  String get option_category => _$this._option_category;
  set option_category(String option_category) =>
      _$this._option_category = option_category;

  ListBuilder<ProductOptions> _product_options;
  ListBuilder<ProductOptions> get product_options =>
      _$this._product_options ??= new ListBuilder<ProductOptions>();
  set product_options(ListBuilder<ProductOptions> product_options) =>
      _$this._product_options = product_options;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  ProductListBuilder();

  ProductListBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _type = _$v.type;
      _category_id = _$v.category_id;
      _status = _$v.status;
      _news = _$v.news;
      _price = _$v.price;
      _old_price = _$v.old_price;
      _best_seller = _$v.best_seller;
      _best_price = _$v.best_price;
      _auction = _$v.auction;
      _user_id = _$v.user_id;
      _percentage = _$v.percentage;
      _product = _$v.product;
      _description = _$v.description;
      _image = _$v.image;
      _images = _$v.images?.toBuilder();
      _slug = _$v.slug;
      _color = _$v.color;
      _option_category = _$v.option_category;
      _product_options = _$v.product_options?.toBuilder();
      _gender = _$v.gender;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductList;
  }

  @override
  void update(void Function(ProductListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductList build() {
    _$ProductList _$result;
    try {
      _$result = _$v ??
          new _$ProductList._(
              id: id,
              name: name,
              type: type,
              category_id: category_id,
              status: status,
              news: news,
              price: price,
              old_price: old_price,
              best_seller: best_seller,
              best_price: best_price,
              auction: auction,
              user_id: user_id,
              percentage: percentage,
              product: product,
              description: description,
              image: image,
              images: _images?.build(),
              slug: slug,
              color: color,
              option_category: option_category,
              product_options: product_options.build(),
              gender: gender);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'product_options';
        product_options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
