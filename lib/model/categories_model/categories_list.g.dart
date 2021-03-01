// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriesList> _$categoriesListSerializer =
    new _$CategoriesListSerializer();

class _$CategoriesListSerializer
    implements StructuredSerializer<CategoriesList> {
  @override
  final Iterable<Type> types = const [CategoriesList, _$CategoriesList];
  @override
  final String wireName = 'CategoriesList';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriesList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
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
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoriesList)])));
    }
    return result;
  }

  @override
  CategoriesList deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesListBuilder();

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
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoriesList)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesList extends CategoriesList {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String name;
  @override
  final String type;
  @override
  final String category_id;
  @override
  final int status;
  @override
  final String description;
  @override
  final String image;
  @override
  final BuiltList<CategoriesList> categories;

  factory _$CategoriesList([void Function(CategoriesListBuilder) updates]) =>
      (new CategoriesListBuilder()..update(updates)).build();

  _$CategoriesList._(
      {this.id,
      this.slug,
      this.name,
      this.type,
      this.category_id,
      this.status,
      this.description,
      this.image,
      this.categories})
      : super._();

  @override
  CategoriesList rebuild(void Function(CategoriesListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesListBuilder toBuilder() =>
      new CategoriesListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesList &&
        id == other.id &&
        slug == other.slug &&
        name == other.name &&
        type == other.type &&
        category_id == other.category_id &&
        status == other.status &&
        description == other.description &&
        image == other.image &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), slug.hashCode),
                                name.hashCode),
                            type.hashCode),
                        category_id.hashCode),
                    status.hashCode),
                description.hashCode),
            image.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesList')
          ..add('id', id)
          ..add('slug', slug)
          ..add('name', name)
          ..add('type', type)
          ..add('category_id', category_id)
          ..add('status', status)
          ..add('description', description)
          ..add('image', image)
          ..add('categories', categories))
        .toString();
  }
}

class CategoriesListBuilder
    implements Builder<CategoriesList, CategoriesListBuilder> {
  _$CategoriesList _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _category_id;
  String get category_id => _$this._category_id;
  set category_id(String category_id) => _$this._category_id = category_id;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  ListBuilder<CategoriesList> _categories;
  ListBuilder<CategoriesList> get categories =>
      _$this._categories ??= new ListBuilder<CategoriesList>();
  set categories(ListBuilder<CategoriesList> categories) =>
      _$this._categories = categories;

  CategoriesListBuilder();

  CategoriesListBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _slug = _$v.slug;
      _name = _$v.name;
      _type = _$v.type;
      _category_id = _$v.category_id;
      _status = _$v.status;
      _description = _$v.description;
      _image = _$v.image;
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesList;
  }

  @override
  void update(void Function(CategoriesListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesList build() {
    _$CategoriesList _$result;
    try {
      _$result = _$v ??
          new _$CategoriesList._(
              id: id,
              slug: slug,
              name: name,
              type: type,
              category_id: category_id,
              status: status,
              description: description,
              image: image,
              categories: _categories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoriesList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
