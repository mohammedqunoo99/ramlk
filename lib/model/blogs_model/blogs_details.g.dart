// GENERATED CODE - DO NOT MODIFY BY HAND

part of blogs_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogsDetails> _$blogsDetailsSerializer =
    new _$BlogsDetailsSerializer();

class _$BlogsDetailsSerializer implements StructuredSerializer<BlogsDetails> {
  @override
  final Iterable<Type> types = const [BlogsDetails, _$BlogsDetails];
  @override
  final String wireName = 'BlogsDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogsDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.created_at != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.created_at,
            specifiedType: const FullType(String)));
    }
    if (object.updated_at != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updated_at,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BlogsDetails deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogsDetailsBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BlogsDetails extends BlogsDetails {
  @override
  final int id;
  @override
  final String image;
  @override
  final String name;
  @override
  final String description;
  @override
  final String status;
  @override
  final String created_at;
  @override
  final String updated_at;

  factory _$BlogsDetails([void Function(BlogsDetailsBuilder) updates]) =>
      (new BlogsDetailsBuilder()..update(updates)).build();

  _$BlogsDetails._(
      {this.id,
      this.image,
      this.name,
      this.description,
      this.status,
      this.created_at,
      this.updated_at})
      : super._();

  @override
  BlogsDetails rebuild(void Function(BlogsDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogsDetailsBuilder toBuilder() => new BlogsDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogsDetails &&
        id == other.id &&
        image == other.image &&
        name == other.name &&
        description == other.description &&
        status == other.status &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), image.hashCode),
                        name.hashCode),
                    description.hashCode),
                status.hashCode),
            created_at.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogsDetails')
          ..add('id', id)
          ..add('image', image)
          ..add('name', name)
          ..add('description', description)
          ..add('status', status)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class BlogsDetailsBuilder
    implements Builder<BlogsDetails, BlogsDetailsBuilder> {
  _$BlogsDetails _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _created_at;
  String get created_at => _$this._created_at;
  set created_at(String created_at) => _$this._created_at = created_at;

  String _updated_at;
  String get updated_at => _$this._updated_at;
  set updated_at(String updated_at) => _$this._updated_at = updated_at;

  BlogsDetailsBuilder();

  BlogsDetailsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image;
      _name = _$v.name;
      _description = _$v.description;
      _status = _$v.status;
      _created_at = _$v.created_at;
      _updated_at = _$v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogsDetails other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BlogsDetails;
  }

  @override
  void update(void Function(BlogsDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogsDetails build() {
    final _$result = _$v ??
        new _$BlogsDetails._(
            id: id,
            image: image,
            name: name,
            description: description,
            status: status,
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
