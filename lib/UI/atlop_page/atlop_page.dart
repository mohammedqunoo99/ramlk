import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/search_page/appbar.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/constent.dart';

int isSelected = 0;
int value=0;
double value2=10.00;
class atlop extends StatefulWidget {
  @override
  _atlopState createState() => _atlopState();
}

class _atlopState extends State<atlop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        child: Column(
          children: [
            appbar(context,
              onTap: () {

              },
              title: 'طلباتي',

            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     color: Color(0xff292929)
              // ),
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        child: InkWell(
                          onTap: () {
                            showShare(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 0,top: 0,bottom: 50),
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: Color(0xff79A316))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'اختيار',
                              style: dataStyle.copyWith(
                                  fontSize: 13, color: Color(0xff79A316)),
                            ),
                          ),
                        ),

                      ),

                      Spacer(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                        Text(
                              'معلومات الطلب',
                          style: dataStyle.copyWith(
                              fontSize: 14, color: Color(0xff79A316),fontWeight: FontWeight.bold),
                            ),
                            Text('طماطم',
                              style: dataStyle.copyWith(
                                  fontSize: 12, color: Color(0xff79A316),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Color(0xff79A316)
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff79A316),
                              child: CircleAvatar(
                                backgroundColor:Color(0xff79A316),
                                radius: 15,
                                backgroundImage: AssetImage(
                                    'assets/images/cart2.png',

                                ),
                              ),
                            ),
                          ),


                          Container(width: 1,color: Color(0xff79A316),height: 40,)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        child: InkWell(
                          onTap: () {
                            showShare2(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 0,top: 0,bottom: 50),
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: Colors.red)
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'تغيير',
                              style: dataStyle.copyWith(
                                  fontSize: 13, color: Color(0xff79A316)),
                            ),
                          ),
                        ),

                      ),

                      Spacer(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text(
                              'مكان الطلب',
                              style: dataStyle.copyWith(
                                  fontSize: 14, color: Color(0xff79A316),fontWeight: FontWeight.bold),
                            ),
                            Text('المنزل',
                              style: dataStyle.copyWith(
                                  fontSize: 12, color: Color(0xff79A316),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Color(0xff79A316)
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff79A316),
                              child: CircleAvatar(
                                backgroundColor:Color(0xff79A316),
                                radius: 10,
                                backgroundImage: AssetImage(
                                  'assets/images/loca.png',

                                ),
                              ),
                            ),
                          ),


                          Container(width: 1,color: Color(0xff79A316),height: 40,)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        child: InkWell(
                          onTap: () {
                            showShare3(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 0,top: 0,bottom: 50),
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: Color(0xff79A316))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'تحديد',
                              style: dataStyle.copyWith(
                                  fontSize: 13, color: Color(0xff79A316)),
                            ),
                          ),
                        ),

                      ),

                      Spacer(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text(
                              'وقت الطلب',
                              style: dataStyle.copyWith(
                                  fontSize: 14, color: Color(0xff79A316),fontWeight: FontWeight.bold),
                            ),
                            Text('12:00ص',
                              style: dataStyle.copyWith(
                                  fontSize: 12, color: Color(0xff79A316),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Color(0xff79A316)
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff79A316),
                              child: CircleAvatar(
                                backgroundColor:Color(0xff79A316),
                                radius: 15,
                                backgroundImage: AssetImage(
                                  'assets/images/clock.png',

                                ),
                              ),
                            ),
                          ),


                          Container(width: 1,color: Color(0xff79A316),height: 40,)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        child: InkWell(
                          // onTap: () {
                          //   Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //       builder: (ctx) => BuyStatusScreens(),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            margin: EdgeInsets.only(left: 0,top: 0,bottom: 50),
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: Color(0xff79A316))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'تحديد',
                              style: dataStyle.copyWith(
                                  fontSize: 13, color: Color(0xff79A316)),
                            ),
                          ),
                        ),

                      ),

                      Spacer(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text(
                              'تاريخ الطلب',
                              style: dataStyle.copyWith(
                                  fontSize: 14, color: Color(0xff79A316),fontWeight: FontWeight.bold),
                            ),
                            Text('12/12/2019',
                              style: dataStyle.copyWith(
                                  fontSize: 12, color: Color(0xff79A316),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Color(0xff79A316)
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff79A316),
                              child: CircleAvatar(
                                backgroundColor:Color(0xff79A316),
                                radius: 15,
                                backgroundImage: AssetImage(
                                  'assets/images/clock.png',

                                ),
                              ),
                            ),
                          ),


                          Container(width: 1,color: Color(0xff79A316),height: 40,)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Container(
                        child: InkWell(
                          // onTap: () {
                          //   Navigator.of(context).push(
                          //     MaterialPageRoute(
                          //       builder: (ctx) => BuyStatusScreens(),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            margin: EdgeInsets.only(left: 0,top: 0,bottom: 50),
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent,
                                border: Border.all(
                                    width: 1, color: Color(0xff79A316))
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'اكتب',
                              style: dataStyle.copyWith(
                                  fontSize: 13, color: Color(0xff79A316)),
                            ),
                          ),
                        ),

                      ),

                      Spacer(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text(
                              'ملاحظات',
                              style: dataStyle.copyWith(
                                  fontSize: 14, color: Color(0xff79A316),fontWeight: FontWeight.bold),
                            ),
                            Text('اختياري',
                              style: dataStyle.copyWith(
                                  fontSize: 12, color: Color(0xff79A316),fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      Column(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // color: Color(0xff79A316)
                            ),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff79A316),
                              child: CircleAvatar(
                                backgroundColor:Color(0xff79A316),
                                radius: 13,
                                backgroundImage: AssetImage(
                                  'assets/images/note.png',

                                ),
                              ),
                            ),
                          ),


                          Container(width: 1,height: 40,)
                        ],
                      ),
                    ],
                  ),

          SizedBox(
            height: 40,
          ),
                  Container(
                    padding: EdgeInsets.all(0),

                    child: baseClick2(
                        onTap: () {

                        },
                        title: 'أطلب الأن',


                        color:  Color(0xff79A316),
                        colorTitle: Colors.white,
                        height: 45.0,
                        radius: 30.0,
                        sizeTitle: 17.0,
                        FontWeight: FontWeight.bold
                    ),
                  ),


                ],
              ),
            )

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

                  height: MediaQuery.of(context).size.height /1.5,
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
                                width: 100,
                                height: 2,
                                color: Colors.black38,
                              ),
                              Container(
                                padding:  EdgeInsets.only(left: 0,right: 25,top: 20,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Text('الطلب رقم 20'),
                                    )
                                  ],),

                              ),
                              data(context),

                              SizedBox(height: 0,),

                              Container(
                                padding: EdgeInsets.all(10),

                                child: baseClick2(
                                    onTap: () {

                                    },
                                    title: 'رجوع',


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
void showShare2(context) {


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

                  height: MediaQuery.of(context).size.height /1.7,
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
                                width: 100,
                                height: 2,
                                color: Colors.black38,
                              ),
                              Container(
                                padding:  EdgeInsets.only(left: 0,right: 0,top: 20,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('assets/images/loca2.png',
                                      height: 100,
                                        width: 150,
                                      )
                                    )
                                  ],),

                              ),
                              Container(
                                padding:  EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text('تحديد العنوان',
                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),
                                      )
                                    )
                                  ],),

                              ),


                              Container(

                                height: 50,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 3,
                                        blurRadius: 1,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    color: Color(0xffF1F1F3)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Image.asset(
                                              'assets/images/done2.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'المنزل',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                    Container(
                                      width: 0.5,
                                      height: 20,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(12),
                                    ),

                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'العنوان',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                  ],
                                ),
                                margin: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width - 60,
                              ),
                              Container(

                                height: 50,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 3,
                                        blurRadius: 1,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    color: Color(0xffF1F1F3)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Image.asset(
                                              'assets/images/exit.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'المصنع',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                    Container(
                                      width: 0.5,
                                      height: 20,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(12),
                                    ),

                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'العنوان',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                  ],
                                ),
                                margin: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width - 60,
                              ),
                              Container(

                                height: 50,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 3,
                                        blurRadius: 1,
                                        offset: Offset(0, 1), // changes position of shadow
                                      ),
                                    ],
                                    color: Color(0xffF1F1F3)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                             Image.asset(
                                              'assets/images/exit.png',
                                              width: 20,
                                              height: 20,
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'الشركة',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                    Container(
                                      width: 0.5,
                                      height: 20,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(12),
                                    ),

                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'العنوان',
                                              style: titleStyle.copyWith(fontSize:15 ,color: Colors.black),
                                            ),
                                          ],
                                        )),

                                  ],
                                ),
                                margin: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width - 60,
                              ),






                              SizedBox(height: 0,),
                              Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 20,right: 20,top: 15),

                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      baseClick2(
                                          onTap: () {
                                            Navigator.of(context).pop();

                                          },
                                          title: 'اختيار ',


                                          // AppLocalizations.of(context).translate("Get Started"),
                                          color: Colors.green,
                                          colorTitle: Colors.white,
                                          height: 35.0,
                                          radius: 15.0,
                                          sizeTitle: 15.0,
                                          width: 150,
                                          FontWeight: FontWeight.bold
                                      ),
                                      baseClick2(
                                          onTap: () {
                                            Navigator.of(context).pop();

                                          },
                                          title: 'اضافة ',


                                          // AppLocalizations.of(context).translate("Get Started"),
                                          color: Colors.green,
                                          colorTitle: Colors.white,
                                          height: 35.0,
                                          radius: 15.0,
                                          width: 150,

                                          sizeTitle: 15.0,
                                          FontWeight: FontWeight.bold
                                      ),
                                    ],
                                  )

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
void showShare3(context) {


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

                  height: MediaQuery.of(context).size.height /1.7,
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
                                width: 100,
                                height: 2,
                                color: Colors.black38,
                              ),
                              Container(
                                padding:  EdgeInsets.only(left: 0,right: 0,top: 20,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('assets/images/clock2.png',
                                      height: 100,
                                        width: 150,
                                      )
                                    )
                                  ],),

                              ),
                              Container(
                                padding:  EdgeInsets.only(left: 0,right: 0,top: 0,bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text('تحديد الوقت',
                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),
                                      )
                                    )
                                  ],),

                              ),

SingleChildScrollView(
  child: Column(
    children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              child:Container(
                child: Column(
                  children: [
                    Text('01'),
                    Text('02'),
                    Text('03'),
                    Text('04'),
                    Text('05'),
                    Text('06'),


                  ],
                ),
              ),

            ),

            Spacer(),
            Container(
              child:Container(
                child: Column(
                  children: [
                    Text('01'),
                    Text('02'),

                    Text('03'),
                    Text('04'),
                    Text('05'),
                    Text('06'),
                    Text('07'),
                    Text('08'),
                    Text('09'),
                    Text('10'),
                    Text('11'),
                    Text('12'),

                  ],
                ),
              ),

            ),

            Spacer(),

            Container(
              child:Container(
                child: Column(
                  children: [
                    Text('ص'),
                    Text('م'),


                  ],
                ),
              ),

            ),
            Spacer(),

          ],
        ),
      )



    ],
  ),
),




                              SizedBox(height: 0,),
                              Container(
                                padding: EdgeInsets.all(10),

                                child: baseClick2(
                                    onTap: () {

                                    },
                                    title: 'تم',


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



Widget data(context) {
  var _listControllerSlider1 = ScrollController();

  return SingleChildScrollView(
    child:Container(
      height: 400,
      margin: EdgeInsets.only(top: 0, bottom: 10),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        controller: _listControllerSlider1,
        itemCount: 6,
        itemBuilder: (ctx, index) {
          return  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('مانجا',
                        style: TextStyle(color: Colors.green,fontSize: 25),
                      ),
                      Text('${value2}',
                        style: TextStyle(color: Colors.green,fontSize: 15),

                      ),

                      Container(
                        child:              Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                if(value>0){
                                  value=value-1;
                                  value2=value2-10.0;

                                }else if(value<=0){
                                  value=0;
                                }

                                isSelected = 0;



                                // _bloc.add(SetAppLanguage(
                                //         (b) => b
                                //       ..language = AppLanguageKeys.EN));

                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 25,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: (isSelected == 0) ? Colors.white : Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: (isSelected == 0) ? Colors.white : Colors.white,
                                    )),
                                child: Text(
                                  '-',
                                  style: dataStyle,
                                ),
                              ),
                            ),
                            Container(
                              child: Text('${value}'),
                            ),
                            InkWell(
                              onTap: () {

                                value=value+1;
                                value2=value2+10.0;
                                isSelected = 1;



                                // _bloc.add(SetAppLanguage(
                                //         (b) => b
                                //       ..language = AppLanguageKeys.AR));

                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 25,
                                height: 30,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: (isSelected == 1) ? Colors.white : Colors.white,
                                    border: Border.all(
                                      width: 1,
                                      color: (isSelected == 1) ? Colors.white : Colors.white,
                                    )),
                                child: Text(
                                  '+',
                                  style: dataStyle,
                                ),
                              ),
                            ),
                          ],
                        ),

                      )
                    ],
                  )
                ],
              ),
              Spacer(),

              SearchVIPItem3(),
              // Spacer(),

            ],
          );
        },
      ),
    ),

  );
}
class SearchVIPItem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(

            margin: EdgeInsets.only(right: 20,top: 10),
            height: 190,
            width: 160,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),

                topLeft: Radius.circular(20),
                topRight:  Radius.circular(0),

              ),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: <Color>[Colors.white,Colors.transparent]
              ),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(.8), BlendMode.dstATop),
                  image: AssetImage('assets/images/img-main-3.png'),
                  fit: BoxFit.cover
              ),
            ),//big image
            child:Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 15),
                                child:Image.asset('assets/images/img-cart.png',width: 17,height: 17,),

                              ),
                              Container(

                                child:Text('كيلو باذنجان',style: titleStyle.copyWith(fontSize: 14),),

                              ),

                              Container(

                                width: 20,
                                height: 45.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),


                                    ),
                                    color: Colors.red),
                                child: Center(child:Text('15',style: TextStyle(color: Colors.white,fontSize: 10),)),
                              ),

                            ],
                          ),

                        ),

                      ],
                    ),


                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 90),
                  padding: EdgeInsets.only(left: 50,right: 50),
                  child: Text('كيلو موز 30 شيكل',

                    style: TextStyle(fontSize: 15,color: Colors.green),

                  ),
                )
              ],
            )


        ),

      ],
    )  ;
  }
}


