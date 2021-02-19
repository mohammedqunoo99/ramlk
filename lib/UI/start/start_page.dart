
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:ramlk/UI/login_page/login_page.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';



class start extends StatefulWidget {
  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          height: 150,
              ),
              Container(
                height: 200,
                width: 250,
                child:   AspectRatio(
                    aspectRatio: 14 / 9,
                    child: Image.asset('assets/images/logo-2.png',

                    ),
              ),

              ),

              Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Text('تعيين الموقع الدقيق لتحديد موقعك لخدمات التوصيل لدينا',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,

                  ),
                ) ,
              ),
             
              SizedBox(
                height: 20,
              ),

             Container(
               padding: EdgeInsets.only(left: 20,right: 20),
               child:  baseClick2(
                 onTap: () {
                   Navigator.of(context).push(
                       MaterialPageRoute(builder: (context) => login()));
                 },
                   title: 'تسجيل الدخول',


                   // AppLocalizations.of(context).translate("Get Started"),
                   color: Colors.green,
                   colorTitle: Colors.white,
                   height: 45.0,
                   radius: 20.0,
                   sizeTitle: 20.0,
                   FontWeight: FontWeight.bold
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 10 ,left: 10,right: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 0.5,
                          color: Colors.white,
                        )),
                    Container(
                      child: Text(
                        'أو تسجيل الدخول مع',
                        style: dataStyle.copyWith(color: Colors.white,fontSize: 17),
                      ),
                      margin: EdgeInsets.only(left: 7, right: 7),
                    ),
                    Expanded(
                        child: Container(
                          height: 0.5,
                          color: Colors.white,
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

 SizedBox(
   height: 40,
 ),

              _buildLoginOrSingupText2(context),






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
          style: defaultStyle.copyWith(color: Colors.white,fontSize: 15),        ),
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
