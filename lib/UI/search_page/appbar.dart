import 'package:flutter/material.dart';

Widget appbar(  BuildContext context,
    {
  Function onTap,

  double height ,
  double width,
  Color color ,
  icon,icons,
  Color borderColor,
  double radius = 4.0,
  String title,
  double sizeTitle,
  Color colorTitle = Colors.white })
{
  return Stack(
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
                  // Text(
                  //   '    ',
                  //   style: titleStyle,
                  // ),
                  Spacer(),
Container(
  padding: EdgeInsets.only(left: 30),
  child:Text(
    title,
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


            ]
        ),
      ),
    ],
  );
}
