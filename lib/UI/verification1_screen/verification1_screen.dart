import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/home_page.dart';
// import 'package:ramlk/Ui/login_without_email_screen/login_without_email_models.dart';
import 'package:ramlk/Ui/verification1_screen/verify_item.dart';
// import 'package:ramlk/Ui/verification2_screen/verification2_screen.dart';
import 'package:ramlk/core/app_localizations.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ramlk/core/style/base_color.dart';

class Verification1Screen extends StatefulWidget {
  @override
  _Verification1ScreenState createState() => _Verification1ScreenState();
}

class _Verification1ScreenState extends State<Verification1Screen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 411.42857142857144,
        height: 683.4285714285714,
        allowFontScaling: true);
    return Scaffold(
      // backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [



                 Container(

                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0),
                        child:Image.asset('assets/images/img-up.png',width: 50,height: 100,),


                      ),

                    ],
                  ),

                ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 0, bottom: 0),
                child: Text(
                  'تحقق الخاص بك',
                  style: titleStyle.copyWith(fontSize: 40,  color: Color(0xff2929000),fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,

                margin: EdgeInsets.only(top: 0, bottom: 0),
                child: Text(

                 'رقم الهاتف',
                  style: dataStyle.copyWith(   color: Color(0xff2929000),fontWeight: FontWeight.bold),
                ),
              ),

              Container(

                padding: EdgeInsets.only(left: 30,right: 30,top: 10),
                child: Text('سوف يقوم رملك بارسال رساله تحقق واحده ليقوم بالتأكد من هويتك',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,

                  ),
                ) ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(

                    padding: EdgeInsets.only(left: 0,right: 35,top: 0,bottom: 40),
                    child: Text('رقمك هو : 0598344412',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,

                      ),
                    ) ,
                  ),
                ],
              ),






              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  VerifyItem(),
                  SizedBox(
                    width: 20.h,
                  ),
                  VerifyItem(),
                  SizedBox(
                    width: 20.h,
                  ),
                  VerifyItem(),
                  SizedBox(
                    width: 20.h,
                  ),
                  VerifyItem(),
                ],
              ),





              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 0),
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'لم تتلقى أي رمز؟',
                    style: dataStyle.copyWith(  color:Colors.black,fontSize: 15),
                    children: <TextSpan>[
                      // TextSpan(
                      //     text: ' '+"Resend code",
                      //     style: dataStyle.copyWith(color: blueColor)),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0.0, bottom: 0),
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'إعادة إرسال رمز جديد.',
                    style: dataStyle.copyWith( color: Color(0xff2929000),fontSize: 15),
                    children: <TextSpan>[
                      // TextSpan(
                      //     text: ' '+"Resend code",
                      //     style: dataStyle.copyWith(color: blueColor)),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(20),

                child: baseClick2(
                    onTap: () {
                      _showMyDialog1(context);
                    },
                    title: 'تسجيل الدخول ',


                    // AppLocalizations.of(context).translate("Get Started"),
                    color: Color(0xff2929000),
                    colorTitle: Colors.white,
                    height: 40.0,
                    radius: 15.0,
                    sizeTitle: 17.0,
                    FontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
Future<void> _showMyDialog1(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return  AlertDialog(
// shape: CircleBorder(),
        elevation: 20,
        actions: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/2.8,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),



                color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child:Image.asset('assets/images/done.png',width: 80,height: 80,),


                ),

                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('تم قبول حسابك',
                      style: titleStyle.copyWith(color: Colors.green,fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('شكرا لك سمير',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 13
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('يمكنك الأن طلب ما تحتاج بكل سهولة',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('يرجى الاحتفاظ بالرمز فلن تتمكن ',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text(' من التمتع بخدماتنا بدونه',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 40,right: 40,top: 15),

                  child: baseClick2(
                      onTap: () {
                        // print('Log In');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => MenuDashboardPage(),
                            ),
                          );
                      },
                      title: 'أنهاء ',


                      // AppLocalizations.of(context).translate("Get Started"),
                      color: Colors.green,
                      colorTitle: Colors.white,
                      height: 35.0,
                      radius: 15.0,
                      sizeTitle: 15.0,
                      FontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
          )
        ],
      ) ;
    },
  );
}
Future<void> _showMyDialog2(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return  AlertDialog(
// shape: CircleBorder(),
        elevation: 20,
        actions: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/2.8,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),



                color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child:Image.asset('assets/images/not-done.png',width: 80,height: 80,),


                ),

                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('لم يقبل حسابك',
                      style: titleStyle.copyWith(color: Colors.green,fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('...شكرا لك سمير',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 13
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('يرجى التحقق من الرمز المرفق',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(left: 40,right: 40,top: 15),

                  child: baseClick2(
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
                      FontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
          )
        ],
      ) ;
    },
  );
}
