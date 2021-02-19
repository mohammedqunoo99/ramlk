import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'package:ramlk/UI/splash_screen-2/splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // View view = layoutInflater.inflate(R.layout.my_dialog, null);
  // AlertDialog infoDialog = new AlertDialog.Builder(MyActivity.this)
  //     .setView(view)
  //     .create();
  //
  // infoDialog.show();

  @override
  void initState() {
    // Timer(
    //     Duration(seconds: 10),
    //         () {
    //       AlertDialog1();
    //     }
    // );
    Timer(
        Duration(seconds: 5),
            () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          SplashScreen2()));
        }
    );
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



                Container(
                  margin: EdgeInsets.only(top: 80,bottom: 100),
                  child:Image.asset('assets/images/logo.png',width: 200,height: 200,),

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

