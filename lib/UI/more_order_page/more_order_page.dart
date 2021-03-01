

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/search_vip_item2.dart';
import 'package:ramlk/core/base_widget/constent.dart';
import 'package:ramlk/core/constent.dart';

class moreorder extends StatefulWidget {
  @override
  _moreorderState createState() => _moreorderState();
}

class _moreorderState extends State<moreorder> {
  int isSelected = 0;
int value=0;
  double value2=10.00;

  var _listControllerSlider1 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.only(top: 30),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     bottomRight: Radius.circular(12),
          //     bottomLeft: Radius.circular(12)),
            color: Color(0xff79A316)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    // Text(
                    //   '    ',
                    //   style: titleStyle,
                    // ),
                    Spacer(),

                    Text(
                      'الأكثر طلبا',
                      style: titleStyle.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/images/arrow back black.png',
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


              ]
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 0, bottom: 30),
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
          setState(() {
            if(value>0){
              value=value-1;
              value2=value2-10.0;

            }else if(value<=0){
              value=0;
            }

            isSelected = 0;

          });

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
              color: (isSelected == 0) ? redColor : whiteColor,
              border: Border.all(
                width: 1,
                color: (isSelected == 0) ? redColor : Colors.white,
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
          setState(() {
            value=value+1;
            value2=value2+10.0;
            isSelected = 1;
          }
          );

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
              color: (isSelected == 1) ? redColor : whiteColor,
              border: Border.all(
                width: 1,
                color: (isSelected == 1) ? redColor : Colors.white,
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

    ],

  ),

),
    );
  }
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
