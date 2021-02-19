

import 'package:ramlk/UI/home_page/search_vip_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/UI/home_page/search_vip_item2.dart';
import 'package:ramlk/core/constent.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var _listControllerSlider1 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Column(
            children: [

              Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               NotificationScreen()));
                        // },
                        child: Image.asset(
                          'assets/images/img-cart.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               NotificationScreen()));
                        // },
                        child: Image.asset(
                          'assets/images/img-profile.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  Text(
                    'الرئيسية',
                    style: titleStyle.copyWith(color: Colors.green),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               NotificationScreen()));
                        // },
                        child: Image.asset(
                          'assets/images/img-cart.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               NotificationScreen()));
                        // },
                        child: Image.asset(
                          'assets/images/img-profile.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Container(

                height:50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      // onTap: () {
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (ctx) => BuyStatusScreens(),
                      //     ),
                      //   );
                      // },
                      child: Container(
                        margin: EdgeInsets.only(left: 5,top: 5,bottom: 15),
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.transparent,
                            border: Border.all(
                                width: 1, color: Colors.green)
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'الكل',
                          style: dataStyle.copyWith(
                              fontSize: 13, color: Colors.green),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, bottom: 30),
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  controller: _listControllerSlider1,
                  itemCount: 6,
                  itemBuilder: (ctx, index) {
                    return SearchVIPItem();
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      // onTap: () {
                      //   Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //       builder: (ctx) => BuyStatusScreens(),
                      //     ),
                      //   );
                      // },
                      child: Container(

                        child: Text(
                          'المزيد',
                          style: dataStyle.copyWith(
                              fontSize: 13, color: Colors.green),
                        ),
                      ),
                    ),
                    Text(
                      'الأكثر طلبا',
                      style: dataStyle.copyWith(fontSize: 17,color: Colors.green),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 0, bottom: 30),
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  controller: _listControllerSlider1,
                  itemCount: 6,
                  itemBuilder: (ctx, index) {
                    return SearchVIPItem2();
                  },
                ),
              ),

            ],

          ),
        )
       
      ),
    );
  }
}
