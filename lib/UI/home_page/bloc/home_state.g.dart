// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final String error;
  @override
  final bool isLoading;
  @override
  final SliderModel sliders;
  @override
  final BlogsDataModel allBlogs;
  @override
  final CategoriesModel categoriesModel;
  @override
  final CategoriesModel servicesModel;
  @override
  final ProductModel products;
  @override
  final ProductModel recentProducts;
  @override
  final bool logout;
  @override
  final bool success;
  @override
  final UserData user;
  @override
  final bool isLogin;
  @override
  final int appLanguage;
  @override
  final String currency;

  factory _$HomeState([void Function(HomeStateBuilder) updates]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._(
      {this.error,
      this.isLoading,
      this.sliders,
      this.allBlogs,
      this.categoriesModel,
      this.servicesModel,
      this.products,
      this.recentProducts,
      this.logout,
      this.success,
      this.user,
      this.isLogin,
      this.appLanguage,
      this.currency})
      : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('HomeState', 'error');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('HomeState', 'isLoading');
    }
    if (logout == null) {
      throw new BuiltValueNullFieldError('HomeState', 'logout');
    }
    if (success == null) {
      throw new BuiltValueNullFieldError('HomeState', 'success');
    }
    if (isLogin == null) {
      throw new BuiltValueNullFieldError('HomeState', 'isLogin');
    }
    if (appLanguage == null) {
      throw new BuiltValueNullFieldError('HomeState', 'appLanguage');
    }
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        error == other.error &&
        isLoading == other.isLoading &&
        sliders == other.sliders &&
        allBlogs == other.allBlogs &&
        categoriesModel == other.categoriesModel &&
        servicesModel == other.servicesModel &&
        products == other.products &&
        recentProducts == other.recentProducts &&
        logout == other.logout &&
        success == other.success &&
        user == other.user &&
        isLogin == other.isLogin &&
        appLanguage == other.appLanguage &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, error.hashCode),
                                                        isLoading.hashCode),
                                                    sliders.hashCode),
                                                allBlogs.hashCode),
                                            categoriesModel.hashCode),
                                        servicesModel.hashCode),
                                    products.hashCode),
                                recentProducts.hashCode),
                            logout.hashCode),
                        success.hashCode),
                    user.hashCode),
                isLogin.hashCode),
            appLanguage.hashCode),
        currency.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('sliders', sliders)
          ..add('allBlogs', allBlogs)
          ..add('categoriesModel', categoriesModel)
          ..add('servicesModel', servicesModel)
          ..add('products', products)
          ..add('recentProducts', recentProducts)
          ..add('logout', logout)
          ..add('success', success)
          ..add('user', user)
          ..add('isLogin', isLogin)
          ..add('appLanguage', appLanguage)
          ..add('currency', currency))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  SliderModelBuilder _sliders;
  SliderModelBuilder get sliders =>
      _$this._sliders ??= new SliderModelBuilder();
  set sliders(SliderModelBuilder sliders) => _$this._sliders = sliders;

  BlogsDataModelBuilder _allBlogs;
  BlogsDataModelBuilder get allBlogs =>
      _$this._allBlogs ??= new BlogsDataModelBuilder();
  set allBlogs(BlogsDataModelBuilder allBlogs) => _$this._allBlogs = allBlogs;

  CategoriesModelBuilder _categoriesModel;
  CategoriesModelBuilder get categoriesModel =>
      _$this._categoriesModel ??= new CategoriesModelBuilder();
  set categoriesModel(CategoriesModelBuilder categoriesModel) =>
      _$this._categoriesModel = categoriesModel;

  CategoriesModelBuilder _servicesModel;
  CategoriesModelBuilder get servicesModel =>
      _$this._servicesModel ??= new CategoriesModelBuilder();
  set servicesModel(CategoriesModelBuilder servicesModel) =>
      _$this._servicesModel = servicesModel;

  ProductModelBuilder _products;
  ProductModelBuilder get products =>
      _$this._products ??= new ProductModelBuilder();
  set products(ProductModelBuilder products) => _$this._products = products;

  ProductModelBuilder _recentProducts;
  ProductModelBuilder get recentProducts =>
      _$this._recentProducts ??= new ProductModelBuilder();
  set recentProducts(ProductModelBuilder recentProducts) =>
      _$this._recentProducts = recentProducts;

  bool _logout;
  bool get logout => _$this._logout;
  set logout(bool logout) => _$this._logout = logout;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  UserDataBuilder _user;
  UserDataBuilder get user => _$this._user ??= new UserDataBuilder();
  set user(UserDataBuilder user) => _$this._user = user;

  bool _isLogin;
  bool get isLogin => _$this._isLogin;
  set isLogin(bool isLogin) => _$this._isLogin = isLogin;

  int _appLanguage;
  int get appLanguage => _$this._appLanguage;
  set appLanguage(int appLanguage) => _$this._appLanguage = appLanguage;

  String _currency;
  String get currency => _$this._currency;
  set currency(String currency) => _$this._currency = currency;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _isLoading = _$v.isLoading;
      _sliders = _$v.sliders?.toBuilder();
      _allBlogs = _$v.allBlogs?.toBuilder();
      _categoriesModel = _$v.categoriesModel?.toBuilder();
      _servicesModel = _$v.servicesModel?.toBuilder();
      _products = _$v.products?.toBuilder();
      _recentProducts = _$v.recentProducts?.toBuilder();
      _logout = _$v.logout;
      _success = _$v.success;
      _user = _$v.user?.toBuilder();
      _isLogin = _$v.isLogin;
      _appLanguage = _$v.appLanguage;
      _currency = _$v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              error: error,
              isLoading: isLoading,
              sliders: _sliders?.build(),
              allBlogs: _allBlogs?.build(),
              categoriesModel: _categoriesModel?.build(),
              servicesModel: _servicesModel?.build(),
              products: _products?.build(),
              recentProducts: _recentProducts?.build(),
              logout: logout,
              success: success,
              user: _user?.build(),
              isLogin: isLogin,
              appLanguage: appLanguage,
              currency: currency);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sliders';
        _sliders?.build();
        _$failedField = 'allBlogs';
        _allBlogs?.build();
        _$failedField = 'categoriesModel';
        _categoriesModel?.build();
        _$failedField = 'servicesModel';
        _servicesModel?.build();
        _$failedField = 'products';
        _products?.build();
        _$failedField = 'recentProducts';
        _recentProducts?.build();

        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
