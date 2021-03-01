// GENERATED CODE - DO NOT MODIFY BY HAND

part of signup_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignupState extends SignupState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final UserModel user;
  @override
  final bool success;

  factory _$SignupState([void Function(SignupStateBuilder) updates]) =>
      (new SignupStateBuilder()..update(updates)).build();

  _$SignupState._({this.error, this.isLoading, this.user, this.success})
      : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('SignupState', 'error');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('SignupState', 'isLoading');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('SignupState', 'success');
    }
  }

  @override
  SignupState rebuild(void Function(SignupStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupStateBuilder toBuilder() => new SignupStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupState &&
        error == other.error &&
        isLoading == other.isLoading &&
        user == other.user &&
        success == other.success;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, error.hashCode), isLoading.hashCode), user.hashCode),
        success.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('user', user)
          ..add('success', success))
        .toString();
  }
}

class SignupStateBuilder implements Builder<SignupState, SignupStateBuilder> {
  _$SignupState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  UserModelBuilder _user;
  UserModelBuilder get user => _$this._user ??= new UserModelBuilder();
  set user(UserModelBuilder user) => _$this._user = user;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  SignupStateBuilder();

  SignupStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _isLoading = _$v.isLoading;
      _user = _$v.user?.toBuilder();
      _success = _$v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignupState;
  }

  @override
  void update(void Function(SignupStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupState build() {
    _$SignupState _$result;
    try {
      _$result = _$v ??
          new _$SignupState._(
              error: error,
              isLoading: isLoading,
              user: _user?.build(),
              success: success);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignupState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
