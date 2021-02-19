import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:ramlk/UI/condition/conditon_page.dart';
import 'package:ramlk/UI/welcome_page/welcome_page.dart';
// import 'package:ramlk/Ui/language_page/language_page.dart';


class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {


  @override
  void initState() {
    // Timer(
    //     Duration(seconds: 10),
    //         () {
    //           AlertDialog1();
    //     }
    // );
    // AlertDialog();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 411.42857142857144,
        height: 683.4285714285714,
        allowFontScaling: true);

    return Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
       children: [
         Container(
           color: Colors.black54,
         ),

         Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 70),
                   child:Image.asset('assets/images/img-up.png',width: 100,height: 100,),


                 ),

               ],
             ),



             Stack(
               children: [


                 Container(
                   alignment: Alignment.center,
                   margin: EdgeInsets.only(top: 80,bottom: 100),
                   child:Image.asset('assets/images/logo.png',width: 200,height: 200,),
                 ),
                 AlertDialog1(context),

               ],


             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 70),

                   child:Image.asset('assets/images/img-down.png',width: 100,height: 100,),


                 ),

               ],
             ),

           ],
         ),


       ],
        ),

    );
  }
}
Widget AlertDialog1(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top:180),
    child:  AlertDialog(

      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      backgroundColor: Colors.white,

      shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      title: Text(
        'الموقع',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '"رملك" يود استخدام الموقع الحالي الخاص بك',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width:120,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)
                  ),

                  child:
                  Center(
                    child: Text('رفض',
                      style: TextStyle(color:Colors.black,fontSize: 13 ),
                    ),
                  )),



              GestureDetector(
                onTap: () {
                  /////push to login page/////
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WelcomePage()));
                },
                  child:
                  Container(
                      width:120,
                      height: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)
                      ),

                      child:
                      Center(

                        child: Text('قبول',
                          style: TextStyle(color:Colors.black,fontSize: 13 ),
                        ),
                      ))),

            ],
          ),


        ],
      ),
    ),
  );

}

