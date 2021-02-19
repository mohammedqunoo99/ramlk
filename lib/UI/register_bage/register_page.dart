import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:ramlk/UI/login_page/bloc/login_bloc.dart';
import 'package:ramlk/UI/login_page/login_page.dart';


import 'package:ramlk/core/app_localizations.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/core/style/base_color.dart';

// import '../../injectoin.dart';


class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  final _userNameController = TextEditingController();
  // final _bloc = sl<LoginBloc>();

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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                      margin: EdgeInsets.only(bottom: 0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                child:Image.asset('assets/images/img-up.png',width: 60,height: 70,),


                              ),

                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_forward,
                              size: 28,
                              color: Colors.green,
                            ),
                          ),




                        ],
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0,bottom: 0),
                          child:Image.asset('assets/images/logo.png',width: 150,height: 150,),

                        ),

                      ],
                    ),

                    Container(
                      padding: EdgeInsets.only(right: 20,top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('تسجيل جديد',
                            style: titleStyle.copyWith(color: Colors.black,fontWeight:FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30,top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('أدخل التفاصيل الخاصة بك',
                            style: dataStyle.copyWith(color: Colors.black,fontSize: 13),


                          ),


                        ],
                      ),
                    ),
Container(
alignment: Alignment.center,
  // height: 100,
  padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 0),

  child:  _buildTextField(
      context: context,
      obscureText: false,
      controller: _userNameController,
      hintText: '...الاسم' ,

  ),
),
                    Row(children: [
                      Text(textphonelogin,style: TextStyle(color: Colors.red),),

                    ],
                    ),

                    Container(

                      padding: EdgeInsets.only(left: 20,right: 20,top: 0),
                      child: Card(
                        elevation: 2,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),

                          side: new BorderSide(color: vv=="red"?Colors.red:Colors.transparent),

                        ),
                        child:
                        Padding(

                          padding:  EdgeInsetsDirectional.only(start: 30.0, top:0,),
                          child: Center(
                            child: InternationalPhoneNumberInput(
                              inputDecoration:  InputDecoration(
                                //contentPadding: EdgeInsets.all(15),

                                //contentPadding: EdgeInsets.all(0.0),


                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 0.1, color: Colors.black)),
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
                      alignment: Alignment.center,
                      // height: 100,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 0,bottom: 0),

                      child:  _buildTextField(
                        context: context,
                        obscureText: false,
                        controller: _userNameController,
                        hintText: '...الايميل' ,

                      ),
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
                          // onTap: () {
                          //   if(_phoneControllerlogin.text.isEmpty){
                          //     setState(() {
                          //       vmaillogin="red";
                          //       v="";
                          //       textphonelogin="";
                          //       textphonelogin=AppLocalizations.of(context).translate("phone required");
                          //
                          //     });
                          //   }
                          //   else  {
                          //     _bloc.add(TryLogin((b) => b
                          //       ..mobile=_phoneControllerlogin.text
                          //
                          //     ));
                          //
                          //   }
                          // },
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
                )
              ],
            )


          ],
        ),
      ),

    );
  }
}
Widget _buildTextField({
  BuildContext context,
  TextEditingController controller,
  TextInputType textInputType,
  IconData icon,
  Function onPressIcon,
  bool obscureText,
  String hintText,

}) {
  return Row(
    children: [
      Expanded(
        child:Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),

          ),
      child:  TextField(
        style: TextStyle(color: Colors.white),
        keyboardType: textInputType,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(

          hintText: hintText,
          // AppLocalizations.of(context).translate(hintText),
          hintStyle: TextStyle(color: HexColor('C4C4C4'), fontSize: 13,
          ),
          suffixIcon: IconButton(
            icon: Icon(icon),
            onPressed: onPressIcon,
          ),
          fillColor: Colors.white10.withOpacity(0.8),
          filled: false,
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: const BorderRadius.all(
          //     const Radius.circular(30.0),
          //   ),
          //   borderSide: BorderSide(color: HexColor('292929'), width:0),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: const BorderRadius.all(
          //     const Radius.circular(20.0),
          //   ),
          //   borderSide: BorderSide(color: HexColor('292929'), width: 0.1),
          // ),
        ),
      ),
  )

      )
    ],
  );
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
          text:'هل ليس لديك حساب ؟' +' ',
          style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),        ),
        TextSpan(
            text:  'تسجيل الدخول'+' ',
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
