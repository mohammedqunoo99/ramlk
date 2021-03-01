// GENERATED CODE - DO NOT MODIFY BY HAND

part of blogs_data_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogsDataModel> _$blogsDataModelSerializer =
    new _$BlogsDataModelSerializer();

class _$BlogsDataModelSerializer
    implements StructuredSerializer<BlogsDataModel> {
  @override
  final Iterable<Type> types = const [BlogsDataModel, _$BlogsDataModel];
  @override
  final String wireName = 'BlogsDataModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogsDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BlogsPage)),
    ];

    return result;
  }

  @override
  BlogsDataModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogsDataModelBuilder();

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
              specifiedType: const FullType(BlogsPage)) as BlogsPage);
          break;
      }
    }

    return result.build();
  }
}

class _$BlogsDataModel extends BlogsDataModel {
  @override
  final String message;
  @override
  final BlogsPage data;

  factory _$BlogsDataModel([void Function(BlogsDataModelBuilder) updates]) =>
      (new BlogsDataModelBuilder()..update(updates)).build();

  _$BlogsDataModel._({this.message, this.data}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('BlogsDataModel', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('BlogsDataModel', 'data');
    }
  }

  @override
  BlogsDataModel rebuild(void Function(BlogsDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogsDataModelBuilder toBuilder() =>
      new BlogsDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogsDataModel &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogsDataModel')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class BlogsDataModelBuilder
    implements Builder<BlogsDataModel, BlogsDataModelBuilder> {
  _$BlogsDataModel _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  BlogsPageBuilder _data;
  BlogsPageBuilder get data => _$this._data ??= new BlogsPageBuilder();
  set data(BlogsPageBuilder data) => _$this._data = data;

  BlogsDataModelBuilder();

  BlogsDataModelBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogsDataModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BlogsDataModel;
  }

  @override
  void update(void Function(BlogsDataModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogsDataModel build() {
    _$BlogsDataModel _$result;
    try {
      _$result =
          _$v ?? new _$BlogsDataModel._(message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BlogsDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
