import 'package:flutter/material.dart';
import 'package:ramlk/core/constent.dart';

class SearchVIPItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: 15),
      height: 291,
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
              image: AssetImage('assets/images/tama2.png'),
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
                          child:Image.asset('assets/images/cart2.png',width: 17,height: 17,),

                        ),
                        Container(

                          child:Text('كيلو باذنجان',style: titleStyle.copyWith(fontSize: 14),),

                        ),

                        Container(

                          width: 40,
                          height: 45.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(35),
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
          // Column(
          //
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(top: 165),
          //       child:Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Container(
          //             padding: EdgeInsets.only(right: 15),
          //             child:Image.asset('assets/images/cart2.png',width: 17,height: 17,),
          //
          //           ),
          //           Container(
          //
          //             child:Text('كيلو باذنجان',style: titleStyle.copyWith(fontSize: 14),),
          //
          //           ),
          //
          //           Container(
          //
          //             width: 60,
          //             height: 45.12,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.only(
          //                   bottomLeft: Radius.circular(35),
          //                 ),
          //                 color: Colors.white),
          //             child: Center(child:Text('15',style: TextStyle(color: Color(0xffF01537),fontSize: 10),)),
          //           ),
          //
          //         ],
          //       ),
          //
          //     ),
          //
          //   ],
          // ),

        ],
      )


    );
  }
}
