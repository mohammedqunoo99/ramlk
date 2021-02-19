import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/splash_screen/splash_screen.dart';
import 'package:ramlk/UI/wellcome_page2/wellcome2.dart';
import 'package:ramlk/core/app_localizations.dart';
import 'package:ramlk/core/base_widget/base_click.dart';
import 'package:ramlk/core/base_widget/base_text.dart';
import 'package:ramlk/core/style/base_color.dart';
// import 'package:ramlk/Ui/base_page/base_page.dart';
// import 'package:ramlk/Ui/login_page/page/login_page.dart';
import 'package:ramlk/core/base_widget/base_click.dart';
import 'package:ramlk/core/base_widget/base_text.dart';
import 'package:ramlk/core/style/base_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/app_localizations.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var controller = PageController(initialPage: 0);
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child:
      Center(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child:Image.asset('assets/images/img-up.png',width: 100,height: 100,),


                ),

              ],
            ),

            // SizedBox(
            //   height: 60,
            // ),
            Container(
                height: 350,
                child: PageView(
                  controller: controller,
                  onPageChanged: (val) {
                    setState(() {
                      indexPage = val;
                    });
                  },
                  children: [
                    Image.asset(
                      "assets/images/slides-1.png",
                      width: 299.8,
                      height: 300,
                    ),
                    Image.asset(
                      "assets/images/slides-2.png",
                      width: 299.8,
                      height: 300,
                    ),
                    Image.asset(
                      "assets/images/slides-3.png",
                      width: 299.8,
                      height: 300,
                    ),
                  ],
                )),
            SizedBox(height: 20),
            indexPage == 0
                ? baseText(
                    title:
                        'رملك',
                        // AppLocalizations.of(context).translate("Many Products"),
                    color: Colors.black,
                    size: 18.0,
                    fontWeight: FontWeight.bold
            )
                : indexPage == 1
                    ? baseText(
                        title:
                            'رملك',
                        // AppLocalizations.of(context)
                        //     .translate("Easy Payment"),
                        color: Colors.black,
                        size: 18.0,
                        fontWeight: FontWeight.bold
            )
                    : baseText(
                        title: 'رملك',
                        // AppLocalizations.of(context)
                        //     .translate("Many Discounts"),
                        color: Colors.black,
                        size: 18.0,
                        fontWeight: FontWeight.bold
            ),
            SizedBox(height: 20),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: indexPage == 0
                    ? baseText(
                        title:
                            'تسوق أجود أنواع الفواكة والخضراوات بأسعار منافسة',
                        color: HexColor("#C2C2C2"),
                        size: 13.0,
                        textAlign: TextAlign.center)
                    : indexPage == 1
                        ? baseText(
                            title:
                                '   توفير أفضل الخضراوات والفواكة  حتى للأفراح والعزائم بأسعار مدهشة',
                            color: HexColor("#C2C2C2"),
                            size: 13.0,
                            textAlign: TextAlign.center)
                        : baseText(
                            title:
                                '  تسوق أجود أنواع الفواكة والخضراوات عبر الهاتف والتوصيل لباب المنزل',
                            color: HexColor("#C2C2C2"),
                            size: 13.0,
                            textAlign: TextAlign.center)),
            SizedBox(height: 120),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

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
                Container(
                  child: new DotsIndicator(
                    dotsCount: 3,
                    position: indexPage.toDouble(),
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(40.0, 9.0),
                        color: Colors.green,
                        activeColor: Colors.green,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(
                              color: HexColor("#FAA613"),
                            ))),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(right: 20, left:20 ,top: 20),

                  child: baseClick(
                      onTap: () {
                        if (indexPage == 0) {
                          setState(() {
                            indexPage = 1;
                          });
                        } else if (indexPage == 1) {
                          setState(() {
                            indexPage = 2;
                          });
                        }
                        else {
                          /////push to login page/////
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => wellcome2()));
                        }
                      },
                      title: indexPage == 0 || indexPage == 1
                          ?'التالي'
                      // AppLocalizations.of(context).translate("Continue")
                          : 'التالي'
                      ,
                      // AppLocalizations.of(context).translate("Get Started"),
                      color: Colors.white,
                      colorTitle: Colors.green,
                      height: 50.0,
                      radius: 6.0,
                      sizeTitle: 14.0,
                      FontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),


          ],
        ),
      )),
    );
  }
}
