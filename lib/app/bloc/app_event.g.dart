// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IniEvent extends IniEvent {
  factory _$IniEvent([void Function(IniEventBuilder) updates]) =>
      (new IniEventBuilder()..update(updates)).build();

  _$IniEvent._() : super._();

  @override
  IniEvent rebuild(void Function(IniEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IniEventBuilder toBuilder() => new IniEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IniEvent;
  }

  @override
  int get hashCode {
    return 693744521;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('IniEvent').toString();
  }
}

class IniEventBuilder implements Builder<IniEvent, IniEventBuilder> {
  _$IniEvent _$v;

  IniEventBuilder();

  @override
  void replace(IniEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$IniEvent;
  }

  @override
  void update(void Function(IniEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IniEvent build() {
    final _$result = _$v ?? new _$IniEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$UpdateToken extends UpdateToken {
  @override
  final String firebase_token;

  factory _$UpdateToken([void Function(UpdateTokenBuilder) updates]) =>
      (new UpdateTokenBuilder()..update(updates)).build();

  _$UpdateToken._({this.firebase_token}) : super._() {
    if (firebase_token == null) {
      throw new BuiltValueNullFieldError('UpdateToken', 'firebase_token');
    }
  }

  @override
  UpdateToken rebuild(void Function(UpdateTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTokenBuilder toBuilder() => new UpdateTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateToken && firebase_token == other.firebase_token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, firebase_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateToken')
          ..add('firebase_token', firebase_token))
        .toString();
  }
}

class UpdateTokenBuilder implements Builder<UpdateToken, UpdateTokenBuilder> {
  _$UpdateToken _$v;

  String _firebase_token;
  String get firebase_token => _$this._firebase_token;
  set firebase_token(String firebase_token) =>
      _$this._firebase_token = firebase_token;

  UpdateTokenBuilder();

  UpdateTokenBuilder get _$this {
    if (_$v != null) {
      _firebase_token = _$v.firebase_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateToken;
  }

  @override
  void update(void Function(UpdateTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateToken build() {
    final _$result = _$v ?? new _$UpdateToken._(firebase_token: firebase_token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
