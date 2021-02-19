
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../style/base_color.dart';
final TextEditingController _pinPutController = TextEditingController();
final FocusNode _pinPutFocusNode = FocusNode();
BuildContext _context;
Widget animatingBorders(controller) {
  BoxDecoration pinPutDecoration = BoxDecoration(
    border: Border.all(color:blueColor),
    borderRadius: BorderRadius.circular(75),
  );
  return PinPut(
    fieldsCount: 4,
    eachFieldHeight: 75,
    eachFieldWidth: 75,
    //onSubmit: (String pin) => _showSnackBar(pin),
    focusNode: _pinPutFocusNode,
    controller: controller,
    submittedFieldDecoration:
    pinPutDecoration.copyWith(borderRadius: BorderRadius.circular(75)),
    pinAnimationType: PinAnimationType.slide,
    selectedFieldDecoration: pinPutDecoration,
    followingFieldDecoration: pinPutDecoration.copyWith(
        borderRadius:  BorderRadius.circular(75)
    ),
  );
}