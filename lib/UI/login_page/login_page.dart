import 'package:ramlk/Ui/login_page/bloc/login_bloc.dart';


import 'package:ramlk/Ui/login_page/bloc/login_event.dart';
import 'package:ramlk/Ui/login_page/bloc/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ramlk/core/app_localizations.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/core/style/base_color.dart';

import '../../injectoin.dart';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final _bloc = sl<LoginBloc>();

  String vmail="",vv="",textphonelogin="",textphone="",textpasswordlogin="",textpassword="",textpasswordconfirm="",textemail="",textname="";
  String v="",vpassword='',vcpassword='',vname='';
  String phone_number='';
  var _phoneController = TextEditingController();
  var _phoneControllerlogin = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'OM');
  String vmaillogin="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backeground-1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backeground-2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
SizedBox(
  height: 270,
),
              Container(
                height: MediaQuery.of(context).size.height/1.5,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    color: Colors.white),
                child:Column(
                  children: [
                 Container(
                   padding: EdgeInsets.only(right: 10,top: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('مرحبا بعودتك',
                       style: titleStyle.copyWith(color: Colors.black),
                       )
                     ],
                   ),
                 ),
                    Container(
                      padding: EdgeInsets.only(right: 30,top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('تسجيل الدخول إلى حسابك',
                            style: dataStyle.copyWith(color: Colors.black,fontSize: 13),


                          ),


                        ],
                      ),
                    ),
                            Container(

                              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                              child: Card(
                                elevation: 2,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: new BorderSide(color: vv=="red"?Colors.red:Colors.transparent),

                                ),
                                child:
                                Padding(

                                  padding:  EdgeInsetsDirectional.only(start: 20.0, top:0,),
                                  child: Center(
                                    child: InternationalPhoneNumberInput(
                                      inputDecoration:  InputDecoration(
                                        //contentPadding: EdgeInsets.all(15),

                                        //contentPadding: EdgeInsets.all(0.0),


                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(width: 2.0, color: Colors.transparent)),
                                        border: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintStyle: TextStyle(color: HexColor("#C2C2C2"), fontSize: 15),
                                        hintText:"598344412",
                                        // labelText: AppLocalizations.of(context).translate("phone number",),
                                        //prefixIcon:Image.asset("assets/images/phone.png"),
                                      ),

                                      onInputChanged: (PhoneNumber number) {
                                        print(number.phoneNumber);
                                        phone_number=number.phoneNumber;
                                      },
                                      onInputValidated: (bool value) {
                                        print(value);
                                      },



                                      ignoreBlank: false,

                                      textStyle: TextStyle(color: HexColor("#C2C2C2")),


                                      autoValidateMode: AutovalidateMode.disabled,
                                      selectorTextStyle: TextStyle(color: HexColor("#C2C2C2")),
                                      initialValue: number,
                                      textFieldController: _phoneController,

                                    ),
                                  ),
                                ),

                              ),
                            ),
                    Row(children: [
                      Text(textphonelogin,style: TextStyle(color: Colors.red),),

                    ],
                    ),

                        Container(

                          padding: EdgeInsets.only(left: 110,right: 30,top: 10),
                          child: Text('سوف يقوم رملك بارسال رساله تحقق واحده ليقوم بالتأكد من هويتك',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,

                            ),
                          ) ,
                        ),
                    Container(
                      padding: EdgeInsets.all(20),

                      child: baseClick2(
                          onTap: () {
                            if(_phoneControllerlogin.text.isEmpty){
                              setState(() {
                                vmaillogin="red";
                                v="";
                                textphonelogin="";
                                textphonelogin=AppLocalizations.of(context).translate("phone required");

                              });
                            }
                            else  {
                              _bloc.add(TryLogin((b) => b
                                ..mobile=_phoneControllerlogin.text

                              ));

                            }
                          },
                          title: 'تسجيل الدخول ',


                          // AppLocalizations.of(context).translate("Get Started"),
                          color: Colors.green,
                          colorTitle: Colors.white,
                          height: 40.0,
                          radius: 15.0,
                          sizeTitle: 17.0,
                          FontWeight: FontWeight.bold
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top:7.0,bottom: 10 ,left: 10,right: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                height: 0.2,
                                color: Colors.black,
                              )),
                          Container(
                            child: Text(
                              'أو تسجيل الدخول مع',
                              style: dataStyle.copyWith(color: Colors.black,fontSize: 17),
                            ),
                            margin: EdgeInsets.only(left: 7, right: 7),
                          ),
                          Expanded(
                              child: Container(
                                height: 0.2,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleItems(
                            image: 'assets/images/Facebook.png',
                          ),  CircleItems(
                            image: 'assets/images/Google+.png',
                          ),
                          CircleItems(
                            image: 'assets/images/Twitter.png',
                          ),
                        ],
                      ),
                    ),


                    _buildLoginOrSingupText2(context),


                  ],
                ) ,
              )
            ],
          ),
        ),
      ),

    );
  }
}
class CircleItems extends StatelessWidget {
  String image;
  CircleItems({this.image});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 411.42857142857144,
        height: 683.4285714285714,
        allowFontScaling: true);
    return  Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 14,horizontal: 14),
      child: Image.asset(image),
    );
  }
}
Widget _buildLoginOrSingupText2(BuildContext context) {
  TextStyle defaultStyle = TextStyle(color: Colors.white, fontSize: 13.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue, fontSize: 13, decoration: TextDecoration.underline,);
  return RichText(

    textAlign: TextAlign.center,
    text: TextSpan(
      style: defaultStyle,
      children: <TextSpan>[
        TextSpan(
          text:'ليس لديك حساب ؟' +' ',
          style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),        ),
        TextSpan(
            text:  'سجل الأن '+' ',
            style: linkStyle.copyWith(color: Colors.green),
            recognizer: TapGestureRecognizer()
          // ..onTap = () {
          //   print('Log In');
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (ctx) => conditon(),
          //     ),
          //   );
          // }
        ),

      ],
    ),
  );
}
