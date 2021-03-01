

import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/home_page.dart';
import 'package:ramlk/UI/verification1_screen/verify_item.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: 7,top: 30),
      width: 160,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),

          ),
          child: InkWell(
            onTap: () {
              _showMyDialog1(context);
            },
            child: Column(
              children: [
                Image.asset('assets/images/hedia.png',
                  height: 100,
                  width: 100,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('مفاجأه',style: TextStyle(fontSize: 23,),),
                ),

                Container(
                  child: Text('قم بكشف الغطاء'),
                ),
                Container(
                  child: Text('لمعرفة هديتك'),
                ),

              ],

            ),
          )


      ),





    )  ;
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
            height: MediaQuery.of(context).size.height/2.5,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),



                color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child:Image.asset('assets/images/mabrook.png',width: 150,height: 150,),


                ),

                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('مبروووك',
                      style: titleStyle.copyWith(color: Colors.red,fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('حصلت على خصم 50',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('تم ارسال كود الخصم عبر الرسائل',
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
                            _showMyDialog2(context);

                      },
                      title: 'أدخل كود الخصم ',


                      // AppLocalizations.of(context).translate("Get Started"),
                      color: Color(0xff2929000),
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
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width/1.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),



                color: Colors.white),
            child: Column(
              children: [

                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text('أدخل الكود',
                      style: titleStyle.copyWith(color: Colors.green,fontSize:25,fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 0,right: 0,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      VerifyItem(),
                      SizedBox(
                        width: 5,
                      ),
                      VerifyItem(),
                      SizedBox(
                        width: 5,
                      ),
                      VerifyItem(),
                      SizedBox(
                        width: 5,
                      ),
                      VerifyItem(),
                    ],
                  ),

                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('تأكد زمن وضع كود صحيح حتى لا تفقد مكافأتك',
                      textAlign: TextAlign.center,
                      style: dataStyle.copyWith(color: Colors.black,fontSize: 15)
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

