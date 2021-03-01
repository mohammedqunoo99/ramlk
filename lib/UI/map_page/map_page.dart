import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/home_page.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';


class map extends StatefulWidget {
  @override
  _mapState createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: Column(
    children: [
      Container(
        height: 100,
        padding:EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Row(
        children: [
          Spacer(),

          Text(
            'موقعك',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 20),
          ),
          Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/arrow back black2.png',
                  width: 17,
                  height: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),

            ],
          ),
        ],

        ),

      ),
      Container(
        child: Image.asset('assets/images/map.png',
        // height: MediaQuery.of(context).size.height/2,
        // width: MediaQuery.of(context).size.width/1,
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 0),

        child:Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),

          ),



          child: Container(
            alignment: Alignment.center,
            height: 50,
            margin: EdgeInsets.only(right: 0),
            // width: 270,
            padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
            child: Container(
                color: Colors.white,
                child: Row(

                  children: [
                    // Spacer(),
                    IconButton(icon:new Icon(Icons.keyboard_arrow_down_rounded),
                      color:Colors.black45,
                      iconSize: 30,
                      onPressed: (){
                        showShare(context);
                      },
                    ),
                    Spacer(),
                    Text('اختار مدينتك'),


                    // Spacer(),

                  ],
                )
            ),

          ),
        ),

      ),

      Container(
        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 0),

        child:Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),

          ),



          child: Container(
            alignment: Alignment.center,
            height: 50,
            margin: EdgeInsets.only(right: 0),
            // width: 270,
            padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
            child: Container(
                color: Colors.white,
                child: Row(

                  children: [
                    // Spacer(),
                    IconButton(icon:new Icon(Icons.keyboard_arrow_down_rounded),
                      color:Colors.black45,
                      iconSize: 30,
                      onPressed: (){
                        showShare(context);
                      },
                    ),
                    Spacer(),
                    Text('اختر منطقتك'),


                    // Spacer(),

                  ],
                )
            ),

          ),
        ),

      ),

      Container(
        padding: EdgeInsets.all(20),

        child: baseClick2(
            onTap: () {
              _showMyDialog1(context);
            },
            title: 'تعيين موقعي',


            // AppLocalizations.of(context).translate("Get Started"),
            color: Color(0xff79A316),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // type4 =type ;
                                      },
                                      child:Container(
                                          child: Text('1111',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),

                                    InkWell(
                                      onTap: () {
                                        // type3 =type ;

                                      },
                                      child:Container(
                                          child: Text('1111',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),
                                    InkWell(
                                      onTap: () {
                                        // type2 =type ;

                                      },
                                      child:Container(
                                          child: Text('1111',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),
                                    InkWell(
                                      onTap: () {
                                        // type =type1 ;
                                      },
                                      child:Container(
                                          child: Text('1111',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),

                                    SizedBox()
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
                  child:Image.asset('assets/images/location_img.png',width: 80,height: 80,),


                ),

                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text('تمكين موقعك',
                      style: titleStyle.copyWith(color: Colors.green,fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text('يرجى السماح لاستخدام موقعك ل',
                      style: dataStyle.copyWith(color: Colors.black,
                          fontSize: 11
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text(' أقرب توصيل على الخريطة.',
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
                        Navigator.of(context).pop();
                      },
                      title: 'تمكن موقع ',


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
