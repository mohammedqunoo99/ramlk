
import 'package:ramlk/UI/home_page/home_page.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/UI/tanbehatk_page/card.dart';
import 'package:ramlk/UI/home_page/search_vip_item.dart';

import 'package:ramlk/UI/search_page/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class takeem extends StatefulWidget {
  @override
  _takeemState createState() => _takeemState();
}

class _takeemState extends State<takeem> {
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
              title: 'تقيماتي',

            ),

            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 0, bottom: 10),
                height: MediaQuery.of(context).size.height/1.35,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  controller: _listControllerSlider1,
                  itemCount: 3,
                  itemBuilder: (ctx, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 7,top: 0,bottom: 5),
                      width: 300,
                      // height: 100,

                      child:    InkWell(
                        onTap: () {
                          showShare(context);
                        },
                        child:  Card(
                            elevation: 8,
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

                      ),





                    ) ;
                  },
                ),
              ),

            ),



          ],
        ),
      ),
    );
  }
}
void showShare(context) {


  showModalBottomSheet(
      backgroundColor: Colors.white,

      useRootNavigator: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(




          builder: (context, setState) {


            return Form(
              // key: _formKey,
              child: Container(

                  height: MediaQuery.of(context).size.height /5.5,
                  margin:
                  EdgeInsets.only(top: 16, bottom: 16, right: 10, left: 10),
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
                      Padding(padding: EdgeInsetsDirectional.only(start: 7,end: 7),
                          child:

                          Column(

                            children: [
                              Container(
                                padding:  EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                 Container(
                                   child: Text('نص افتراضينص افتراضينص افتراضي افتراضي'),
                                 )
                                  ],),

                              ),

                              SizedBox(height: 0,),

                              Container(
                                padding: EdgeInsets.all(20),

                                child: baseClick2(
                                    onTap: () {

                                    },
                                    title: 'اختيار',


                                    // AppLocalizations.of(context).translate("Get Started"),
                                    color: Color(0xff79A316),
                                    colorTitle: Colors.white,
                                    height: 40.0,
                                    radius: 15.0,
                                    sizeTitle: 17.0,
                                    FontWeight: FontWeight.bold
                                ),
                              ),



                            ],)

                      ),
                    ],
                  )
              ),
            );
          },
        );
      });
}
