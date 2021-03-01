// GENERATED CODE - DO NOT MODIFY BY HAND

part of singup_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$SignUp extends SignUp {
  @override
  final String name;
  @override
  final String email;
  @override
  final String mobile;

  factory _$SignUp([void Function(SignUpBuilder) updates]) =>
      (new SignUpBuilder()..update(updates)).build();

  _$SignUp._({this.name, this.email, this.mobile}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('SignUp', 'name');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('SignUp', 'email');
    }
    if (mobile == null) {
      throw new BuiltValueNullFieldError('SignUp', 'mobile');
    }
  }

  @override
  SignUp rebuild(void Function(SignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpBuilder toBuilder() => new SignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUp &&
        name == other.name &&
        email == other.email &&
        mobile == other.mobile;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), email.hashCode), mobile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUp')
          ..add('name', name)
          ..add('email', email)
          ..add('mobile', mobile))
        .toString();
  }
}

class SignUpBuilder implements Builder<SignUp, SignUpBuilder> {
  _$SignUp _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  SignUpBuilder();

  SignUpBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _email = _$v.email;
      _mobile = _$v.mobile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignUp;
  }

  @override
  void update(void Function(SignUpBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUp build() {
    final _$result =
        _$v ?? new _$SignUp._(name: name, email: email, mobile: mobile);
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
