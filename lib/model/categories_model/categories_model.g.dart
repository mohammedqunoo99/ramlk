// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoriesModel> _$categoriesModelSerializer =
    new _$CategoriesModelSerializer();

class _$CategoriesModelSerializer
    implements StructuredSerializer<CategoriesModel> {
  @override
  final Iterable<Type> types = const [CategoriesModel, _$CategoriesModel];
  @override
  final String wireName = 'CategoriesModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoriesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CategoriesList)])),
    ];

    return result;
  }

  @override
  CategoriesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesModelBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoriesList)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesModel extends CategoriesModel {
  @override
  final String message;
  @override
  final BuiltList<CategoriesList> data;

  factory _$CategoriesModel([void Function(CategoriesModelBuilder) updates]) =>
      (new CategoriesModelBuilder()..update(updates)).build();

  _$CategoriesModel._({this.message, this.data}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('CategoriesModel', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('CategoriesModel', 'data');
    }
  }

  @override
  CategoriesModel rebuild(void Function(CategoriesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesModelBuilder toBuilder() =>
      new CategoriesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesModel &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoriesModel')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class CategoriesModelBuilder
    implements Builder<CategoriesModel, CategoriesModelBuilder> {
  _$CategoriesModel _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<CategoriesList> _data;
  ListBuilder<CategoriesList> get data =>
      _$this._data ??= new ListBuilder<CategoriesList>();
  set data(ListBuilder<CategoriesList> data) => _$this._data = data;

  CategoriesModelBuilder();

  CategoriesModelBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoriesModel;
  }

  @override
  void update(void Function(CategoriesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoriesModel build() {
    _$CategoriesModel _$result;
    try {
      _$result =
          _$v ?? new _$CategoriesModel._(message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoriesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
