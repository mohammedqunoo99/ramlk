// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserData> _$userDataSerializer = new _$UserDataSerializer();

class _$UserDataSerializer implements StructuredSerializer<UserData> {
  @override
  final Iterable<Type> types = const [UserData, _$UserData];
  @override
  final String wireName = 'UserData';

  @override
  Iterable<Object> serialize(Serializers serializers, UserData object,
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
    if (object.full_name != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(object.full_name,
            specifiedType: const FullType(String)));
    }
    if (object.mobile != null) {
      result
        ..add('mobile')
        ..add(serializers.serialize(object.mobile,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.mobile_verified_at != null) {
      result
        ..add('mobile_verified_at')
        ..add(serializers.serialize(object.mobile_verified_at,
            specifiedType: const FullType(String)));
    }
    if (object.email_verified_at != null) {
      result
        ..add('email_verified_at')
        ..add(serializers.serialize(object.email_verified_at,
            specifiedType: const FullType(String)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.notification != null) {
      result
        ..add('notification')
        ..add(serializers.serialize(object.notification,
            specifiedType: const FullType(int)));
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
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.company_name != null) {
      result
        ..add('company_name')
        ..add(serializers.serialize(object.company_name,
            specifiedType: const FullType(String)));
    }
    if (object.company_description != null) {
      result
        ..add('company_description')
        ..add(serializers.serialize(object.company_description,
            specifiedType: const FullType(String)));
    }
    if (object.video_360 != null) {
      result
        ..add('video_360')
        ..add(serializers.serialize(object.video_360,
            specifiedType: const FullType(String)));
    }
    if (object.delivery != null) {
      result
        ..add('delivery')
        ..add(serializers.serialize(object.delivery,
            specifiedType: const FullType(int)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.whatsapp != null) {
      result
        ..add('whatsapp')
        ..add(serializers.serialize(object.whatsapp,
            specifiedType: const FullType(String)));
    }
    if (object.website != null) {
      result
        ..add('website')
        ..add(serializers.serialize(object.website,
            specifiedType: const FullType(String)));
    }
    if (object.facebook != null) {
      result
        ..add('facebook')
        ..add(serializers.serialize(object.facebook,
            specifiedType: const FullType(String)));
    }
    if (object.instagram != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(object.instagram,
            specifiedType: const FullType(String)));
    }
    if (object.consultancies != null) {
      result
        ..add('consultancies')
        ..add(serializers.serialize(object.consultancies,
            specifiedType: const FullType(String)));
    }
    if (object.reset_token != null) {
      result
        ..add('reset_token')
        ..add(serializers.serialize(object.reset_token,
            specifiedType: const FullType(String)));
    }
    if (object.reset_verified != null) {
      result
        ..add('reset_verified')
        ..add(serializers.serialize(object.reset_verified,
            specifiedType: const FullType(String)));
    }
    if (object.notification_status != null) {
      result
        ..add('notification_status')
        ..add(serializers.serialize(object.notification_status,
            specifiedType: const FullType(String)));
    }
    if (object.currency != null) {
      result
        ..add('currency')
        ..add(serializers.serialize(object.currency,
            specifiedType: const FullType(int)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    // if (object.roles != null) {
    //   result
    //     ..add('roles')
    //     ..add(serializers.serialize(object.roles,
    //         specifiedType:
    //             const FullType(BuiltList, const [const FullType(Roles)])));
    // }
    // if (object.pivot != null) {
    //   result
    //     ..add('pivot')
    //     ..add(serializers.serialize(object.pivot,
    //         specifiedType: const FullType(Pivot)));
    // }
    return result;
  }

  @override
  UserData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataBuilder();

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
        case 'full_name':
          result.full_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_verified_at':
          result.mobile_verified_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email_verified_at':
          result.email_verified_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'notification':
          result.notification = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_name':
          result.company_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_description':
          result.company_description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video_360':
          result.video_360 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery':
          result.delivery = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'whatsapp':
          result.whatsapp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'facebook':
          result.facebook = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram':
          result.instagram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'consultancies':
          result.consultancies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reset_token':
          result.reset_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reset_verified':
          result.reset_verified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notification_status':
          result.notification_status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        // case 'roles':
        //   result.roles.replace(serializers.deserialize(value,
        //           specifiedType:
        //               const FullType(BuiltList, const [const FullType(Roles)]))
        //       as BuiltList<Object>);
        //   break;
        // case 'pivot':
        //   result.pivot.replace(serializers.deserialize(value,
        //       specifiedType: const FullType(Pivot)) as Pivot);
        //   break;
      }
    }

    return result.build();
  }
}

class _$UserData extends UserData {
  @override
  final int id;
  @override
  final String image;
  @override
  final String full_name;
  @override
  final String mobile;
  @override
  final String email;
  @override
  final String mobile_verified_at;
  @override
  final String email_verified_at;
  @override
  final String note;
  @override
  final int status;
  @override
  final int notification;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final String logo;
  @override
  final String company_name;
  @override
  final String company_description;
  @override
  final String video_360;
  @override
  final int delivery;
  @override
  final String phone;
  @override
  final String whatsapp;
  @override
  final String website;
  @override
  final String facebook;
  @override
  final String instagram;
  @override
  final String consultancies;
  @override
  final String reset_token;
  @override
  final String reset_verified;
  @override
  final String notification_status;
  @override
  final int currency;
  @override
  final String language;
  @override
  final String name;
  // @override
  // final BuiltList<Roles> roles;
  // @override
  // final Pivot pivot;

  factory _$UserData([void Function(UserDataBuilder) updates]) =>
      (new UserDataBuilder()..update(updates)).build();

  _$UserData._(
      {this.id,
      this.image,
      this.full_name,
      this.mobile,
      this.email,
      this.mobile_verified_at,
      this.email_verified_at,
      this.note,
      this.status,
      this.notification,
      this.created_at,
      this.updated_at,
      this.logo,
      this.company_name,
      this.company_description,
      this.video_360,
      this.delivery,
      this.phone,
      this.whatsapp,
      this.website,
      this.facebook,
      this.instagram,
      this.consultancies,
      this.reset_token,
      this.reset_verified,
      this.notification_status,
      this.currency,
      this.language,
      this.name,
      // this.roles,
      // this.pivot
      })
      : super._();

  @override
  UserData rebuild(void Function(UserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataBuilder toBuilder() => new UserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserData &&
        id == other.id &&
        image == other.image &&
        full_name == other.full_name &&
        mobile == other.mobile &&
        email == other.email &&
        mobile_verified_at == other.mobile_verified_at &&
        email_verified_at == other.email_verified_at &&
        note == other.note &&
        status == other.status &&
        notification == other.notification &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        logo == other.logo &&
        company_name == other.company_name &&
        company_description == other.company_description &&
        video_360 == other.video_360 &&
        delivery == other.delivery &&
        phone == other.phone &&
        whatsapp == other.whatsapp &&
        website == other.website &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        consultancies == other.consultancies &&
        reset_token == other.reset_token &&
        reset_verified == other.reset_verified &&
        notification_status == other.notification_status &&
        currency == other.currency &&
        language == other.language &&
        name == other.name
        // &&
        // roles == other.roles &&
        // pivot == other.pivot
    ;
  }

  @override
  // int get hashCode {
  //   return $jf($jc(
  //       $jc(
  //           $jc(
  //               $jc(
  //                   $jc(
  //                       $jc(
  //                           $jc(
  //                               $jc(
  //                                   $jc(
  //                                       $jc(
  //                                           $jc(
  //                                               $jc(
  //                                                   $jc(
  //                                                       $jc(
  //                                                           $jc(
  //                                                               $jc(
  //                                                                   $jc(
  //                                                                       $jc(
  //                                                                           $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), image.hashCode), full_name.hashCode), mobile.hashCode), email.hashCode), mobile_verified_at.hashCode), email_verified_at.hashCode), note.hashCode), status.hashCode), notification.hashCode), created_at.hashCode), updated_at.hashCode),
  //                                                                               logo.hashCode),
  //                                                                           company_name.hashCode),
  //                                                                       company_description.hashCode),
  //                                                                   video_360.hashCode),
  //                                                               delivery.hashCode),
  //                                                           phone.hashCode),
  //                                                       whatsapp.hashCode),
  //                                                   website.hashCode),
  //                                               facebook.hashCode),
  //                                           instagram.hashCode),
  //                                       consultancies.hashCode),
  //                                   reset_token.hashCode),
  //                               reset_verified.hashCode),
  //                           notification_status.hashCode),
  //                       currency.hashCode),
  //                   language.hashCode),
  //               name.hashCode),
  //           roles.hashCode),
  //       pivot.hashCode));
  // }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserData')
          ..add('id', id)
          ..add('image', image)
          ..add('full_name', full_name)
          ..add('mobile', mobile)
          ..add('email', email)
          ..add('mobile_verified_at', mobile_verified_at)
          ..add('email_verified_at', email_verified_at)
          ..add('note', note)
          ..add('status', status)
          ..add('notification', notification)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('logo', logo)
          ..add('company_name', company_name)
          ..add('company_description', company_description)
          ..add('video_360', video_360)
          ..add('delivery', delivery)
          ..add('phone', phone)
          ..add('whatsapp', whatsapp)
          ..add('website', website)
          ..add('facebook', facebook)
          ..add('instagram', instagram)
          ..add('consultancies', consultancies)
          ..add('reset_token', reset_token)
          ..add('reset_verified', reset_verified)
          ..add('notification_status', notification_status)
          ..add('currency', currency)
          ..add('language', language)
          ..add('name', name)

        )
        .toString();
  }
}

class UserDataBuilder implements Builder<UserData, UserDataBuilder> {
  _$UserData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _full_name;
  String get full_name => _$this._full_name;
  set full_name(String full_name) => _$this._full_name = full_name;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _mobile_verified_at;
  String get mobile_verified_at => _$this._mobile_verified_at;
  set mobile_verified_at(String mobile_verified_at) =>
      _$this._mobile_verified_at = mobile_verified_at;

  String _email_verified_at;
  String get email_verified_at => _$this._email_verified_at;
  set email_verified_at(String email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _notification;
  int get notification => _$this._notification;
  set notification(int notification) => _$this._notification = notification;

  String _created_at;
  String get created_at => _$this._created_at;
  set created_at(String created_at) => _$this._created_at = created_at;

  String _updated_at;
  String get updated_at => _$this._updated_at;
  set updated_at(String updated_at) => _$this._updated_at = updated_at;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  String _company_name;
  String get company_name => _$this._company_name;
  set company_name(String company_name) => _$this._company_name = company_name;

  String _company_description;
  String get company_description => _$this._company_description;
  set company_description(String company_description) =>
      _$this._company_description = company_description;

  String _video_360;
  String get video_360 => _$this._video_360;
  set video_360(String video_360) => _$this._video_360 = video_360;

  int _delivery;
  int get delivery => _$this._delivery;
  set delivery(int delivery) => _$this._delivery = delivery;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _whatsapp;
  String get whatsapp => _$this._whatsapp;
  set whatsapp(String whatsapp) => _$this._whatsapp = whatsapp;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  String _facebook;
  String get facebook => _$this._facebook;
  set facebook(String facebook) => _$this._facebook = facebook;

  String _instagram;
  String get instagram => _$this._instagram;
  set instagram(String instagram) => _$this._instagram = instagram;

  String _consultancies;
  String get consultancies => _$this._consultancies;
  set consultancies(String consultancies) =>
      _$this._consultancies = consultancies;

  String _reset_token;
  String get reset_token => _$this._reset_token;
  set reset_token(String reset_token) => _$this._reset_token = reset_token;

  String _reset_verified;
  String get reset_verified => _$this._reset_verified;
  set reset_verified(String reset_verified) =>
      _$this._reset_verified = reset_verified;

  String _notification_status;
  String get notification_status => _$this._notification_status;
  set notification_status(String notification_status) =>
      _$this._notification_status = notification_status;

  int _currency;
  int get currency => _$this._currency;
  set currency(int currency) => _$this._currency = currency;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;
  //
  // ListBuilder<Roles> _roles;
  // ListBuilder<Roles> get roles => _$this._roles ??= new ListBuilder<Roles>();
  // set roles(ListBuilder<Roles> roles) => _$this._roles = roles;
  //
  // PivotBuilder _pivot;
  // PivotBuilder get pivot => _$this._pivot ??= new PivotBuilder();
  // set pivot(PivotBuilder pivot) => _$this._pivot = pivot;

  UserDataBuilder();

  UserDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _image = _$v.image;
      _full_name = _$v.full_name;
      _mobile = _$v.mobile;
      _email = _$v.email;
      _mobile_verified_at = _$v.mobile_verified_at;
      _email_verified_at = _$v.email_verified_at;
      _note = _$v.note;
      _status = _$v.status;
      _notification = _$v.notification;
      _created_at = _$v.created_at;
      _updated_at = _$v.updated_at;
      _logo = _$v.logo;
      _company_name = _$v.company_name;
      _company_description = _$v.company_description;
      _video_360 = _$v.video_360;
      _delivery = _$v.delivery;
      _phone = _$v.phone;
      _whatsapp = _$v.whatsapp;
      _website = _$v.website;
      _facebook = _$v.facebook;
      _instagram = _$v.instagram;
      _consultancies = _$v.consultancies;
      _reset_token = _$v.reset_token;
      _reset_verified = _$v.reset_verified;
      _notification_status = _$v.notification_status;
      _currency = _$v.currency;
      _language = _$v.language;
      _name = _$v.name;
      // _roles = _$v.roles?.toBuilder();
      // _pivot = _$v.pivot?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserData;
  }

  @override
  void update(void Function(UserDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserData build() {
    _$UserData _$result;
    try {
      _$result = _$v ??
          new _$UserData._(
              id: id,
              image: image,
              full_name: full_name,
              mobile: mobile,
              email: email,
              mobile_verified_at: mobile_verified_at,
              email_verified_at: email_verified_at,
              note: note,
              status: status,
              notification: notification,
              created_at: created_at,
              updated_at: updated_at,
              logo: logo,
              company_name: company_name,
              company_description: company_description,
              video_360: video_360,
              delivery: delivery,
              phone: phone,
              whatsapp: whatsapp,
              website: website,
              facebook: facebook,
              instagram: instagram,
              consultancies: consultancies,
              reset_token: reset_token,
              reset_verified: reset_verified,
              notification_status: notification_status,
              currency: currency,
              language: language,
              name: name,
              // roles: _roles?.build(),
              // pivot: _pivot?.build()
          );
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'roles';
        // _roles?.build();
        _$failedField = 'pivot';
        // _pivot?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
