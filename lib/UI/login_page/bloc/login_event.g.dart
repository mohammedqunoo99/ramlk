// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TryLogin extends TryLogin {
  @override
  final String mobile;

  factory _$TryLogin([void Function(TryLoginBuilder) updates]) =>
      (new TryLoginBuilder()..update(updates)).build();

  _$TryLogin._({this.mobile}) : super._() {
    if (mobile == null) {
      throw new BuiltValueNullFieldError('TryLogin', 'mobile');
    }
  }

  @override
  TryLogin rebuild(void Function(TryLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TryLoginBuilder toBuilder() => new TryLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TryLogin && mobile == other.mobile;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mobile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TryLogin')..add('mobile', mobile))
        .toString();
  }
}

class TryLoginBuilder implements Builder<TryLogin, TryLoginBuilder> {
  _$TryLogin _$v;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  TryLoginBuilder();

  TryLoginBuilder get _$this {
    if (_$v != null) {
      _mobile = _$v.mobile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TryLogin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TryLogin;
  }

  @override
  void update(void Function(TryLoginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TryLogin build() {
    final _$result = _$v ?? new _$TryLogin._(mobile: mobile);
    replace(_$result);
    return _$result;
  }
}

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder) updates]) =>
      (new ClearErrorBuilder()..update(updates)).build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClearError build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeStatus extends ChangeStatus {
  factory _$ChangeStatus([void Function(ChangeStatusBuilder) updates]) =>
      (new ChangeStatusBuilder()..update(updates)).build();

  _$ChangeStatus._() : super._();

  @override
  ChangeStatus rebuild(void Function(ChangeStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStatusBuilder toBuilder() => new ChangeStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStatus;
  }

  @override
  int get hashCode {
    return 20091075;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ChangeStatus').toString();
  }
}

class ChangeStatusBuilder
    implements Builder<ChangeStatus, ChangeStatusBuilder> {
  _$ChangeStatus _$v;

  ChangeStatusBuilder();

  @override
  void replace(ChangeStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ChangeStatus;
  }

  @override
  void update(void Function(ChangeStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeStatus build() {
    final _$result = _$v ?? new _$ChangeStatus._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
