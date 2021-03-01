import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'package:ramlk/UI/home_page/search_vip_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/search_vip_item2.dart';
import 'package:ramlk/UI/login_page/bloc/login_bloc.dart';
import 'package:ramlk/UI/search_page/appbar.dart';
import 'package:ramlk/UI/tanbehatk_page/card.dart';
import 'package:ramlk/UI/verification1_screen/verification1_screen.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/core/style/base_color.dart';

import '../../injectoin.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

final Color backgroundColor = Color(0xFF4A4A58);
var _phoneController = TextEditingController();

String vmail="",vv="",textphonelogin="",textphone="",textpasswordlogin="",textpassword="",textpasswordconfirm="",textemail="",textname="";
String v="",vpassword='',vcpassword='',vname='';
String phone_number='';
PhoneNumber number = PhoneNumber(isoCode: 'OM');

class MenuDashboardPage extends StatefulWidget {
  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage> with SingleTickerProviderStateMixin {
  final _bloc = sl<HomeBloc>();

  int i = 0;


  String vmail = "",
      vv = "",
      textphonelogin = "",
      textphone = "",
      textpasswordlogin = "",
      textpassword = "",
      textpasswordconfirm = "",
      textemail = "",
      textname = "";
  String v = "",
      vpassword = '',
      vcpassword = '',
      vname = '';
  String phone_number = '';
  var _phoneController = TextEditingController();
  var _phoneControllerlogin = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'OM');
  String vmaillogin = "";
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _bloc.add(GetSliders());

    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation =
        Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(
            _controller);
    _tabController.index = 1;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    screenHeight = size.height;
    screenWidth = size.width;

    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {
          return Scaffold(
            backgroundColor: backgroundColor,
            body: Stack(
              children: <Widget>[
                menu(context),
                dashboard(context),
              ],
            ),
          );
        }
    );
  }

  Widget menu(context) {
    var _listControllerSlider1 = ScrollController();

    return Scaffold(

      body: Container(
        child: Column(
          children: [
            appbar(context,
              onTap: () {

              },
              title: 'بروفايلي',

            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: IconButton(icon: Icon(Icons.edit),
                              onPressed: () {},),
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 10),

                                child: Text(
                                  'سمير كريم', style: TextStyle(fontSize: 18),),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        right: 0, left: 15),

                                    child: Text(
                                      'زبون', style: TextStyle(fontSize: 12),),
                                  ),

                                ],
                              )


                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10),

                            child: CircleAvatar(
                              radius: 28,
                              backgroundColor: Color(0xffFFB950),
                              child: CircleAvatar(
                                radius: 26,
                                backgroundImage: NetworkImage(
                                    'https://wallup.net/wp-content/uploads/2016/03/01/309622-Daisy_Ridley-women-actress-brunette.jpg'),
                              ),
                            ),

                          ),


                        ],
                      )


                    ],
                  )
                ],
              ),
            ),


            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 50),

              child: Column(

                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 0),

                          child: Text('تحديث رقم الهاتف', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: IconButton(icon: Icon(Icons.phone_sharp),
                            onPressed: () {
                              _showMyDialog2(context);
                            },),
                        ),

                      ],
                    ),
                  ),
                  Container(

                    height: 0.3,
                    color: Colors.black45,
                  ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 0),

                          child: Text('طلب رمز الدخول', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 0),
                          child: IconButton(icon: Icon(Icons.security),
                            onPressed: () {
                              _showMyDialog3(context);
                            },),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black45,
                  ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 40),

                          child: Text(' تقييماتي', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 0),
                          child: IconButton(icon: Icon(Icons.star),
                            onPressed: () {},),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black45,
                  ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 50),

                          child: Text('شكاوي ', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 0),
                          child: IconButton(icon: Icon(Icons.message),
                            onPressed: () {},),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black45,
                  ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 10),

                          child: Text('تحديد موقعي ', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: IconButton(icon: Icon(
                              Icons.location_on_outlined),
                            onPressed: () {},),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black45,
                  ),


                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 40),

                          child: Text(' فواتيري', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: IconButton(icon: Icon(
                              Icons.location_disabled_sharp),
                            onPressed: () {},),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 0, left: 0),

                          child: Text(' تسجيل الخروج', style: TextStyle(
                              fontSize: 18),),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: IconButton(icon: Icon(
                              Icons.power_settings_new_outlined),
                            onPressed: () {
                              _showMyDialog1(context);
                            },),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    var _listControllerSlider1 = ScrollController();


    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {
          return AnimatedPositioned(
            duration: duration,
            top: 0,
            bottom: 0,
            left: isCollapsed ? 0 : 0.6 * screenWidth,
            right: isCollapsed ? 0 : -0.2 * screenWidth,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Material(
                animationDuration: duration,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                elevation: 6,
                color: Colors.white,
                child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Column(
                        children: [

                          Row(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               NotificationScreen()));
                                    // },
                                    child: Image.asset(
                                      'assets/images/img-cart.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (isCollapsed)
                                          _controller.forward();
                                        else
                                          _controller.reverse();

                                        isCollapsed = !isCollapsed;
                                      });
                                    },
                                    child: Image.asset(
                                      'assets/images/img-profile.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ],
                              ),

                              Spacer(),

                              Text(
                                'الرئيسية',
                                style: titleStyle.copyWith(color: Colors.green),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  InkWell(
                                    // onTap: () {
                                    //   Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) =>
                                    //               NotificationScreen()));
                                    // },
                                    child: Image.asset(
                                      'assets/images/img-cart.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(

                                    child: Image.asset(
                                      'assets/images/img-profile.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0, bottom: 30),
                            height: 260,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              controller: _listControllerSlider1,
                              itemCount: 6,
                              itemBuilder: (ctx, index) {
                                return Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 220,
                                    width: 160,
                                    padding: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),

                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(0),

                                      ),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          colors: <Color>[
                                            Colors.white,
                                            Colors.transparent
                                          ]
                                      ),
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(
                                              Colors.white.withOpacity(.8),
                                              BlendMode.dstATop),
                                          image: AssetImage(
                                              'assets/images/img-main-3.png'),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                    //big image
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .end,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets
                                                            .only(right: 15),
                                                        child: Image.asset(
                                                          'assets/images/img-cart.png',
                                                          width: 17,
                                                          height: 17,),

                                                      ),
                                                      Container(

                                                        child: Text(
                                                          'hhdj',
                                                          style: titleStyle
                                                              .copyWith(
                                                              fontSize: 14),),

                                                      ),

                                                      Container(

                                                        width: 20,
                                                        height: 45.12,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius
                                                                .only(
                                                              bottomLeft: Radius
                                                                  .circular(10),
                                                              bottomRight: Radius
                                                                  .circular(10),


                                                            ),
                                                            color: Colors.red),
                                                        child: Center(
                                                            child: Text('hhhh',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 10),)),
                                                      ),

                                                    ],
                                                  ),

                                                ),

                                              ],
                                            ),


                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 90),
                                          padding: EdgeInsets.only(
                                              left: 50, right: 50),
                                          child: Text('كيلو موز 30 شيكل',

                                            style: TextStyle(fontSize: 15,
                                                color: Colors.green),

                                          ),
                                        )
                                      ],
                                    )


                                );
                              },
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //       builder: (ctx) => BuyStatusScreens(),
                                  //     ),
                                  //   );
                                  // },
                                  child: Container(

                                    child: Text(
                                      'المزيد',
                                      style: dataStyle.copyWith(
                                          fontSize: 13, color: Colors.green),
                                    ),
                                  ),
                                ),
                                Text(
                                  'الأكثر طلبا',
                                  style: dataStyle.copyWith(
                                      fontSize: 17, color: Colors.green),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 0, bottom: 30),
                            height: 210,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              controller: _listControllerSlider1,
                              itemCount: 6,
                              itemBuilder: (ctx, index) {
                                return SearchVIPItem2();
                              },
                            ),
                          ),

                        ],

                      ),
                    )

                ),
              ),
            ),
          );
        });
  }

  Future<void> _showMyDialog1(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد تسجيل الخروج',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('علما انه اذا قمت بتسجيل خروج',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(' لن تتمكن من الدخول مجددا بدون',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 11
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      فاحتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 11
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'رجوع ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'خروج ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //تسجيل الخروج


  Future<void> _showMyDialog2(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد طلب رمز الدخول',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();

                                _showMyDialog_2(context);
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //تحديث رقم الهاتف
  Future<void> _showMyDialog_2(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد طلب رمز الدخول',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(

                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      elevation: 2,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: new BorderSide(color: vv == "red"
                            ? Colors.red
                            : Colors.transparent),

                      ),
                      child:
                      Padding(

                        padding: EdgeInsetsDirectional.only(
                          start: 20.0, top: 0,),
                        child: Center(
                          child: InternationalPhoneNumberInput(
                            inputDecoration: InputDecoration(
                              //contentPadding: EdgeInsets.all(15),

                              //contentPadding: EdgeInsets.all(0.0),


                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.transparent)),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: HexColor("#C2C2C2"), fontSize: 15),
                              hintText: "598344412",
                              // labelText: AppLocalizations.of(context).translate("phone number",),
                              //prefixIcon:Image.asset("assets/images/phone.png"),
                            ),

                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                              phone_number = number.phoneNumber;
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },


                            ignoreBlank: false,

                            textStyle: TextStyle(color: HexColor("#C2C2C2")),


                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(
                                color: HexColor("#C2C2C2")),
                            initialValue: number,
                            textFieldController: _phoneController,

                          ),
                        ),
                      ),

                    ),
                  ),
                  Container(

                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      elevation: 2,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: new BorderSide(color: vv == "red"
                            ? Colors.red
                            : Colors.transparent),

                      ),
                      child:
                      Padding(

                        padding: EdgeInsetsDirectional.only(
                          start: 20.0, top: 0,),
                        child: Center(
                          child: InternationalPhoneNumberInput(
                            inputDecoration: InputDecoration(
                              //contentPadding: EdgeInsets.all(15),

                              //contentPadding: EdgeInsets.all(0.0),


                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.transparent)),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: HexColor("#C2C2C2"), fontSize: 15),
                              hintText: "598344412",
                              // labelText: AppLocalizations.of(context).translate("phone number",),
                              //prefixIcon:Image.asset("assets/images/phone.png"),
                            ),

                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                              phone_number = number.phoneNumber;
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },


                            ignoreBlank: false,

                            textStyle: TextStyle(color: HexColor("#C2C2C2")),


                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(
                                color: HexColor("#C2C2C2")),
                            initialValue: number,
                            textFieldController: _phoneController,

                          ),
                        ),
                      ),

                    ),
                  ),


                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();

                                _showMyDialog_21(context);
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //تحديث رقم الهاتف
  Future<void> _showMyDialog_21(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد طلب رمز الدخول',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();

                                _showMyDialog_22(context);
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //تحديث رقم الهاتف
  Future<void> _showMyDialog_22(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد طلب رمز الدخول',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => Verification1Screen(),
                                  ),
                                );
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //تحديث رقم الهاتف


  Future<void> _showMyDialog3(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد تحديث رقم الهاتف',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();

                                _showMyDialog_3(context);
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //طلب رمز الدخول
  Future<void> _showMyDialog_3(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('هل تريد طلب رمز الدخول',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(

                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      elevation: 2,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: new BorderSide(color: vv == "red"
                            ? Colors.red
                            : Colors.transparent),

                      ),
                      child:
                      Padding(

                        padding: EdgeInsetsDirectional.only(
                          start: 20.0, top: 0,),
                        child: Center(
                          child: InternationalPhoneNumberInput(
                            inputDecoration: InputDecoration(
                              //contentPadding: EdgeInsets.all(15),

                              //contentPadding: EdgeInsets.all(0.0),


                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.transparent)),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: HexColor("#C2C2C2"), fontSize: 15),
                              hintText: "598344412",
                              // labelText: AppLocalizations.of(context).translate("phone number",),
                              //prefixIcon:Image.asset("assets/images/phone.png"),
                            ),

                            onInputChanged: (PhoneNumber number) {
                              print(number.phoneNumber);
                              phone_number = number.phoneNumber;
                            },
                            onInputValidated: (bool value) {
                              print(value);
                            },


                            ignoreBlank: false,

                            textStyle: TextStyle(color: HexColor("#C2C2C2")),


                            autoValidateMode: AutovalidateMode.disabled,
                            selectorTextStyle: TextStyle(
                                color: HexColor("#C2C2C2")),
                            initialValue: number,
                            textFieldController: _phoneController,

                          ),
                        ),
                      ),

                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();

                                _showMyDialog_31(context);
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //طلب رمز الدخول
  Future<void> _showMyDialog_31(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
// shape: CircleBorder(),
          elevation: 20,
          actions: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.8,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),


                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset(
                      'assets/images/done.png', width: 80, height: 80,),


                  ),

                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('تم ارسال الرمز بنجاح',
                        style: titleStyle.copyWith(
                            color: Colors.green, fontWeight: FontWeight.bold)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text('رمز ال      احتفظ به جيدا ',
                        style: dataStyle.copyWith(color: Colors.black,
                            fontSize: 13
                        )
                    ),
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => Verification1Screen(),
                                  ),
                                );
                              },
                              title: 'نعم ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              sizeTitle: 15.0,
                              width: 100,
                              FontWeight: FontWeight.bold
                          ),
                          baseClick2(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              title: 'لا ',


                              // AppLocalizations.of(context).translate("Get Started"),
                              color: Colors.green,
                              colorTitle: Colors.white,
                              height: 35.0,
                              radius: 15.0,
                              width: 100,

                              sizeTitle: 15.0,
                              FontWeight: FontWeight.bold
                          ),
                        ],
                      )

                  ),

                ],
              ),
            )
          ],
        );
      },
    );
  } //طلب رمز الدخول


}
