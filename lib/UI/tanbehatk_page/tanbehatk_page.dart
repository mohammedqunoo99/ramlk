import 'package:ramlk/UI/home_page/home_page.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/UI/tanbehatk_page/card.dart';
import 'package:ramlk/UI/home_page/search_vip_item.dart';

import 'package:ramlk/UI/search_page/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tanbehatk extends StatefulWidget {
  @override
  _tanbehatkState createState() => _tanbehatkState();
}

class _tanbehatkState extends State<tanbehatk> {
  var _listControllerSlider1 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(
  child: Column(
    children: [
      appbar(context,
        onTap: () {

        },
        title: 'تنبيهاتك',

      ),
      Container(

        margin: EdgeInsets.only(top: 0, bottom: 10),
        height: 260,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: false,
          controller: _listControllerSlider1,
          itemCount: 6,
          itemBuilder: (ctx, index) {
            return card();
          },
        ),
      ),
         Container(
  padding: EdgeInsets.only(right: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('مشاهد',
        style: TextStyle(fontSize: 25,),
      ),

    ],
  ),

),


SingleChildScrollView(
  child:Container(
    margin: EdgeInsets.only(top: 0, bottom: 10),
    height: MediaQuery.of(context).size.height/2.65,
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      // shrinkWrap: true,
      controller: _listControllerSlider1,
      itemCount: 10,
      itemBuilder: (ctx, index) {
        return Container(
          margin: EdgeInsets.only(right: 7,top: 0,bottom: 5),
          width: 300,
          // height: 100,
          child: Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Text('تم الاستيلام الساعة 10:00 صباحا'),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),

                    child: Image.asset('assets/images/hedia.png',
                      height: 70,
                      width: 70,
                    ),

                  ),


                ],

              )
          ),





        ) ;
      },
    ),
  ),

)

    ],
  ),
),
    );
  }
}
