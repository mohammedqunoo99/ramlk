

 import 'package:flutter/material.dart';

Widget baseText({title,size,color,textAlign ,decoration,fontWeight}){
  return Text(
    title,softWrap: true,
    textAlign: textAlign,
    style: TextStyle(
        fontSize: size,

          decoration: decoration,

        fontFamily: 'Jannat',

        fontWeight: fontWeight,
        color: color),
  );
 }
