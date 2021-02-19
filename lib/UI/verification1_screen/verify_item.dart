import 'package:flutter/material.dart';
import 'package:ramlk/core/constent.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 411.42857142857144,
        height: 683.4285714285714,
        allowFontScaling: true);
    return Container(
      // padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      height: 60.w,
      width: 60.w,
      decoration: BoxDecoration(
          color: Color(0xff2929000),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextField(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        onChanged: (txt) {
          if (txt.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: titleStyle,
        textAlign: TextAlign.center,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}
