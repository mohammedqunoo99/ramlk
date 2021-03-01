import 'package:ramlk/core/base_widget/base_click-2.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/search_vip_item2.dart';
import 'package:ramlk/core/base_widget/constent.dart';
import 'package:ramlk/core/constent.dart';

int isSelected = 0;
int value=0;
double value2=10.00;

var _listControllerSlider1 = ScrollController();
class talabaty extends StatefulWidget {
  @override
  _talabatyState createState() => _talabatyState();
}

class _talabatyState extends State<talabaty> {
  int isSelected = 0;
  int value=0;
  double value2=10.00;

  var _listControllerSlider1 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset('assets/images/appbar.png'),

                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'assets/images/add.png',
                                width: 25,
                                height: 30,
                              ),
                            ),

                            Spacer(),
                            Container(
                              padding: EdgeInsets.only(left: 0),
                              child:Text('طلباتي',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),
                              ),

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
                         Container(
                           padding: EdgeInsets.all(20),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               InkWell(
                                 onTap: () {

    setState(() {
      isSelected = 4;

    });



                                   // _bloc.add(SetAppLanguage(
                                   //         (b) => b
                                   //       ..language = AppLanguageKeys.EN));

                                 },
                                 child:  Container(
                                   margin: EdgeInsets.all(0),
                                   width: 40,
                                   height: 30,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(

                                       borderRadius: BorderRadius.circular(10),
                                       color: (isSelected == 4) ?Colors.white  :  greenColor,
                                       border: Border.all(
                                         width: 0,
                                         color: (isSelected == 4) ?  greenColor : greenColor,
                                       )),
                                   child: Text(
                                     'كميات',
                                     style: dataStyle.copyWith(fontSize: 15,
                                         color: (isSelected == 4) ? Colors.green : Colors.white,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ),

                               InkWell(
                                 onTap: () {

                                   setState(() {
                                     isSelected = 3;

                                   });


                                   // _bloc.add(SetAppLanguage(
                                   //         (b) => b
                                   //       ..language = AppLanguageKeys.EN));

                                 },
                                 child:  Container(
                                   margin: EdgeInsets.all(0),
                                   // width: 25,
                                   // height: 30,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: (isSelected == 3) ? whiteColor : greenColor,
                                       border: Border.all(
                                         width: 1,
                                         color: (isSelected == 3) ? whiteColor : greenColor,
                                       )),
                                   child: Text(
                                     'اشتراك شهري',
                                     style: dataStyle.copyWith(fontSize: 15,
                                         color: (isSelected == 3) ? Colors.green : Colors.white,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ),

                               InkWell(
                                 onTap: () {


                                   setState(() {
                                     isSelected = 2;

                                   });



                                   // _bloc.add(SetAppLanguage(
                                   //         (b) => b
                                   //       ..language = AppLanguageKeys.EN));

                                 },
                                 child:  Container(
                                   margin: EdgeInsets.all(0),
                                   width: 95,
                                   height: 30,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: (isSelected == 2) ? whiteColor : greenColor,
                                       border: Border.all(
                                         width: 1,
                                         color: (isSelected == 2) ? whiteColor : greenColor,
                                       )),
                                   child: Text(
                                     'اشتراك أسبوعي',
                                     style: dataStyle.copyWith(fontSize: 15,
                                         color: (isSelected == 2) ? Colors.green : Colors.white,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ),

                               InkWell(
                                 onTap: () {

                                   setState(() {
                                     isSelected = 1;

                                   });


                                   // _bloc.add(SetAppLanguage(
                                   //         (b) => b
                                   //       ..language = AppLanguageKeys.EN));

                                 },
                                 child:  Container(
                                   margin: EdgeInsets.all(0),
                                   width: 40,
                                   height: 30,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: (isSelected == 1) ? whiteColor : greenColor,
                                       border: Border.all(
                                         width: 1,
                                         color: (isSelected == 1) ? whiteColor : greenColor,
                                       )),
                                   child: Text(
                                     'طلباتي',
                                     style: dataStyle.copyWith(fontSize: 15,
                                         color: (isSelected == 1) ? Colors.green : Colors.white,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ),

                               InkWell(
                                 onTap: () {


                                   setState(() {
                                     isSelected = 0;
                                     data(context);
                                   });


                                   // _bloc.add(SetAppLanguage(
                                   //         (b) => b
                                   //       ..language = AppLanguageKeys.EN));

                                 },
                                 child:  Container(
                                   margin: EdgeInsets.all(0),
                                   // width: 25,
                                   // height: 30,
                                   alignment: Alignment.center,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: (isSelected == 0) ? whiteColor : greenColor,
                                       border: Border.all(
                                         width: 1,
                                         color: (isSelected == 0) ? whiteColor :greenColor,
                                       )),
                                   child: Text(
                                     'السله',
                                     style: dataStyle.copyWith(fontSize: 15,
                                         color: (isSelected == 0) ? Colors.green : Colors.white,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ),







                             ],
                           ),
                         )

                      ]
                  ),
                ),
              ],
            ),

    data(context),

            total(context),

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


Widget data(context) {
  var _listControllerSlider1 = ScrollController();

  return SingleChildScrollView(
    child:Container(
      height: 400,
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

  );
}
Widget total(context) {

  return SingleChildScrollView(

    child:Container(
      margin: EdgeInsets.only(top:24),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)),
          color: Color(0xff79A316)
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,bottom: 0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Container(
  child: Text('30.00',
                style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
    ),
),
                Container(
                  child: Text('المجموع',
                    style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,bottom: 0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Container(
  child: Text('30.00',
    style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
  ),
),
                Container(
                  child: Text('التوصيل',
                    style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20,bottom: 0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
Container(
  child: Text('30.00',
    style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
  ),
),
                Container(
                  child: Text('المجموع الكلي',
                    style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),
          ),









          Container(
            padding: EdgeInsets.all(5),

            child: baseClick2(
                onTap: () {

                },
                title: 'تأكيد الطلب ',


                // AppLocalizations.of(context).translate("Get Started"),
                color: Colors.white,
                colorTitle: Colors.green,
                height: 40.0,
                radius: 15.0,
                sizeTitle: 17.0,
                FontWeight: FontWeight.bold
            ),
          ),

        ],
      ),
    )

  )
  ;
}
