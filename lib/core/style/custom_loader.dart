

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'base_color.dart';


Widget loader({context}){
  return SpinKitFadingFour(
    color: HexColor(color),
    size: 50.0,
  );
}

Widget listLoader({context}){
  return SpinKitThreeBounce(
    color: blueColor,
    size: 20.0,
  );
}