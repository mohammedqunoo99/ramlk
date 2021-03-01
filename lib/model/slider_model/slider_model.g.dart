// GENERATED CODE - DO NOT MODIFY BY HAND

part of slider_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SliderModel> _$sliderModelSerializer = new _$SliderModelSerializer();

class _$SliderModelSerializer implements StructuredSerializer<SliderModel> {
  @override
  final Iterable<Type> types = const [SliderModel, _$SliderModel];
  @override
  final String wireName = 'SliderModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SliderModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SliderList)])),
    ];

    return result;
  }

  @override
  SliderModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SliderModelBuilder();

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
                      BuiltList, const [const FullType(SliderList)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SliderModel extends SliderModel {
  @override
  final String message;
  @override
  final BuiltList<SliderList> data;

  factory _$SliderModel([void Function(SliderModelBuilder) updates]) =>
      (new SliderModelBuilder()..update(updates)).build();

  _$SliderModel._({this.message, this.data}) : super._() {
    if (message == null) {
      throw new BuiltValueNullFieldError('SliderModel', 'message');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('SliderModel', 'data');
    }
  }

  @override
  SliderModel rebuild(void Function(SliderModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderModelBuilder toBuilder() => new SliderModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderModel &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderModel')
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class SliderModelBuilder implements Builder<SliderModel, SliderModelBuilder> {
  _$SliderModel _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<SliderList> _data;
  ListBuilder<SliderList> get data =>
      _$this._data ??= new ListBuilder<SliderList>();
  set data(ListBuilder<SliderList> data) => _$this._data = data;

  SliderModelBuilder();

  SliderModelBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SliderModel;
  }

  @override
  void update(void Function(SliderModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderModel build() {
    _$SliderModel _$result;
    try {
      _$result =
          _$v ?? new _$SliderModel._(message: message, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SliderModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
