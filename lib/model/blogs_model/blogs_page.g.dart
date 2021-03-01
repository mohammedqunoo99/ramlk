// GENERATED CODE - DO NOT MODIFY BY HAND

part of blogs_page;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlogsPage> _$blogsPageSerializer = new _$BlogsPageSerializer();

class _$BlogsPageSerializer implements StructuredSerializer<BlogsPage> {
  @override
  final Iterable<Type> types = const [BlogsPage, _$BlogsPage];
  @override
  final String wireName = 'BlogsPage';

  @override
  Iterable<Object> serialize(Serializers serializers, BlogsPage object,
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
                BuiltList, const [const FullType(BlogsDetails)])));
    }
    return result;
  }

  @override
  BlogsPage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlogsPageBuilder();

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
                      BuiltList, const [const FullType(BlogsDetails)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$BlogsPage extends BlogsPage {
  @override
  final int last_page;
  @override
  final BuiltList<BlogsDetails> data;

  factory _$BlogsPage([void Function(BlogsPageBuilder) updates]) =>
      (new BlogsPageBuilder()..update(updates)).build();

  _$BlogsPage._({this.last_page, this.data}) : super._() {
    if (last_page == null) {
      throw new BuiltValueNullFieldError('BlogsPage', 'last_page');
    }
  }

  @override
  BlogsPage rebuild(void Function(BlogsPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlogsPageBuilder toBuilder() => new BlogsPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlogsPage &&
        last_page == other.last_page &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, last_page.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BlogsPage')
          ..add('last_page', last_page)
          ..add('data', data))
        .toString();
  }
}

class BlogsPageBuilder implements Builder<BlogsPage, BlogsPageBuilder> {
  _$BlogsPage _$v;

  int _last_page;
  int get last_page => _$this._last_page;
  set last_page(int last_page) => _$this._last_page = last_page;

  ListBuilder<BlogsDetails> _data;
  ListBuilder<BlogsDetails> get data =>
      _$this._data ??= new ListBuilder<BlogsDetails>();
  set data(ListBuilder<BlogsDetails> data) => _$this._data = data;

  BlogsPageBuilder();

  BlogsPageBuilder get _$this {
    if (_$v != null) {
      _last_page = _$v.last_page;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlogsPage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BlogsPage;
  }

  @override
  void update(void Function(BlogsPageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BlogsPage build() {
    _$BlogsPage _$result;
    try {
      _$result =
          _$v ?? new _$BlogsPage._(last_page: last_page, data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BlogsPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
