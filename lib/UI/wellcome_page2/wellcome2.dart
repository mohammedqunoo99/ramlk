

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/condition/conditon_page.dart';
import 'package:ramlk/UI/start/start_page.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';




class wellcome2 extends StatefulWidget {
  @override
  _wellcome2State createState() => _wellcome2State();
}

class _wellcome2State extends State<wellcome2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
                child:Image.asset('assets/images/img-up.png',width: 100,height: 100,),


              ),

            ],
          ),
          SizedBox(
            height: 0,
          ),
         Container(

           // width: 370,
           // height: 300,
           child:  Stack(
             children: [
               Container(

                 child: Image.asset(
                   "assets/images/sl-1.png",
                   width: 299.8,
                   height: 300,

                 ),

               ),
               Container(

                 child: Image.asset(
                   "assets/images/sl-2.png",
                   width: 299.8,
                   height: 300,

                 ),

               ),
               // Image.asset(
               //   "assets/images/sl-3.png",
               //   width: 200.8,
               //   height: 300,
               // ),
             ],


           ),
         ),
          SizedBox(
            height: 50,
          ),
Container(
  padding: EdgeInsets.all(20),

  child: baseClick2(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => start()));
      },
      title: 'قبول',


      // AppLocalizations.of(context).translate("Get Started"),
      color: Colors.green,
      colorTitle: Colors.white,
      height: 50.0,
      radius: 15.0,
      sizeTitle: 20.0,
      FontWeight: FontWeight.bold
  ),
),
          SizedBox(
            height: 10,
          ),
          _buildLoginOrSingupText1(context),
          _buildLoginOrSingupText2(context),
          _buildLoginOrSingupText3(context),


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 0),

                child:Image.asset('assets/images/img-down.png',width: 100,height: 100,),


              ),

            ],
          ),

        ],
      ),



    );
  }
}
Widget _buildLoginOrSingupText1(BuildContext context) {
  TextStyle defaultStyle = TextStyle(color: Colors.white, fontSize: 13.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue, fontSize: 13, decoration: TextDecoration.underline,);
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: defaultStyle,
      children: <TextSpan>[
        TextSpan(
          text:'بالضغط على زر البدء ',
          style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),
        ),


      ],
    ),
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
          text:'قبول' +' ',
          style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),        ),
        TextSpan(
            text:  'الشروط والأحكام'+' ',
            style: linkStyle.copyWith(color: Colors.green),
            recognizer: TapGestureRecognizer()
          ..onTap = () {
            print('Log In');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => conditon(),
              ),
            );
          }
        ),
        TextSpan(text:  'و'+' ',     style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),),

      ],
    ),
  );
}

Widget _buildLoginOrSingupText3(BuildContext context) {
  TextStyle defaultStyle = TextStyle(color: Colors.white, fontSize: 13.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue, fontSize: 13, decoration: TextDecoration.underline,);
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      style: defaultStyle,
      children: <TextSpan>[

        TextSpan(
            text: 'سياسة الخصوصية',
            style: linkStyle.copyWith(color: Colors.green),
            recognizer: TapGestureRecognizer()
          ..onTap = () {
            print('Sing Up');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => conditon(),
              ),
            );
          }
        ),
        TextSpan(text:  ' اسم التطبيق',     style: defaultStyle.copyWith(color: Colors.black,fontSize: 15),),

      ],
    ),
  );
}

