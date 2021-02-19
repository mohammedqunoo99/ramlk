

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramlk/core/constent.dart';

class conditon extends StatefulWidget {
  @override
  _conditonState createState() => _conditonState();
}

class _conditonState extends State<conditon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 22,
                            color: Colors.green,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'الشروط والأحكام',
                            style: titleStyle.copyWith(color: Colors.green),
                          ),
                        ),
                        SizedBox(),

                      ],
                    ),
                  ),
                ),

              ],
            ),
            Container(
              height: 0.5,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
