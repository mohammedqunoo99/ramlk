
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/base_widget/constent.dart';
import 'package:ramlk/core/constent.dart';


class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product>  {
  int isSelected = 0;
  int value=0;
  double value2=10.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container (
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backeground-1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backeground-2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 0),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height /16,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomRight: Radius.circular(12),
                  //     bottomLeft: Radius.circular(12)),
                  //   color: Color(0xff79A316)
                ),
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
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'assets/images/cart2.png',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            Spacer(),

                            Text(
                              'فواكهه',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
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

              SizedBox(
                height: 325,
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.8,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    color: Colors.white),
                child:Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(18),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${value2}',
                          style: TextStyle(fontSize: 20),
                          ),
                          Text('موز',
                            style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),

                          ),



                        ],
                      )
                      ,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                        height: 0.3,
                      color: Colors.black,
                    ),

                    Container(
  alignment: Alignment.center,
  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('نص افتراضينص افتراضينص افتراضي افتراضي',
      maxLines: 10,
      ),
    ],
  ),
),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('نص افتراضينص افتراضينص افتراضي افتراضي',
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('نص افتراضينص افتراضينص افتراضي افتراضي',
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('نص افتراضينص افتراضينص افتراضي افتراضي',
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('نص افتراضينص افتراضينص افتراضي افتراضي',
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('نص افتراضينص افتراضينص افتراضي افتراضي',
                            maxLines: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child:Row(
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

                    ),

                    Container(
                      padding: EdgeInsets.all(20),

                      child: baseClick2(
                          onTap: () {

                          },
                          title: 'أضف للسلة ',


                          // AppLocalizations.of(context).translate("Get Started"),
                          color: Colors.green,
                          colorTitle: Colors.white,
                          height: 40.0,
                          radius: 20.0,
                          sizeTitle: 17.0,
                          FontWeight: FontWeight.bold
                      ),
                    ),



                  ],
                ) ,
              )
            ],
          ),
        ),
      ),


    );
  }
}
