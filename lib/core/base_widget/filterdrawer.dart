// import 'package:flutter/material.dart';
// import 'package:maiel/core/style/base_color.dart';
//
// import 'base_text.dart';
//  String dropdownsex;
//
//
// String dropdowncountry;
// String dropdowncity;
// bool checkboxvalue1=false,checkboxvalue2=false;
//
// Widget filterdrawer(var context){
//   return
//     new Drawer(
//
//   child:
//           StatefulBuilder(builder: (context, setState)
//   {
//    return ListView(
//       children: [
//         Column(
//           children: [
//             SizedBox(height: 30,),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//
//               children: [
//                 SizedBox(width: 20,),
//                GestureDetector(
//
//                    child:  Image.asset('assets/images/results.png', color: blueColor,
//                   width: 30,
//                   height: 30,),
//                onTap: (){
//
//                      Navigator.pop(context);
//                },
//                ),
//                 SizedBox(width: 4,),
//               GestureDetector(
//                   onTap: (){
//                     Navigator.pop(context);
//                   },child:
//   baseText(
//                     title: 'فرز نتائج',
//                     color: blueColor,
//                     size: 12.0
//   )),
//
//               ],),
//             SizedBox(height: 60,),
//
//
//             Padding(
//               padding: EdgeInsets.only(left: 20, right: 20, top: 5),
//               child:
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: blueColor,
//                                 width: 1,
//                               ),
//                             ),
//                             width: 18,
//                             height: 18,
//                             child: Theme(
//                               data: ThemeData(
//                                 unselectedWidgetColor:
//                                 Colors.transparent,
//                               ),
//                               child: Checkbox(
//                                 activeColor: Colors.transparent,
//                                 checkColor: blueColor,
//                                 value: checkboxvalue1,
//                                 tristate: false,
//                                 onChanged: (bool isChecked) {
//                                   setState(() {
//                                     checkboxvalue1 = isChecked;
//                                   });
//
//                                 },
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           baseText(
//                             title:
//                             "الفئة الرئيسية",
//                             color: HexColor("#878787"),
//                             size: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ],
//                       )
//
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: blueColor,
//                                 width: 1,
//                               ),
//                             ),
//                             width: 18,
//                             height: 18,
//                             child: Theme(
//                               data: ThemeData(
//                                 unselectedWidgetColor:
//                                 Colors.transparent,
//                               ),
//                               child: Checkbox(
//                                 activeColor: Colors.transparent,
//                                 checkColor: blueColor,
//                                 value: checkboxvalue2,
//                                 tristate: false,
//                                 onChanged: (bool isChecked) {
//                                   setState(() {
//                                     checkboxvalue2 = isChecked;
//                                   });
//
//                                 },
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           baseText(
//                             title:
//                             "الفئة الثانوية",
//                             color: HexColor("#878787"),
//                             size: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ],
//                       )
//
//                     ],
//                   )
//
//
//                   // Expanded(child:
//
//                   //  )
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 40,),
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
//               child:
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Column(
//                       children: [
//                         Row(children: [
//                           baseText(
//                             title:
//                             " الدولة",
//                             color: HexColor("#878787"),
//                             size: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           SizedBox(width: 5,),
//
//                           Container(
//                             width:
//                             MediaQuery.of(context).size.width * 0.22,
//                             height: 25,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: HexColor("#DFE4EB"),
//                               ),
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(00)),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 8.0),
//                               child: DropdownButton<String>(
//                                 isExpanded: true,
//                                 value: dropdowncountry,
//                                 hint: Text("لبنان "),
//                                 icon: Icon(
//                                   Icons.arrow_drop_down,
//                                   color: blueColor,
//                                 ),
//                                 iconSize: 24,
//                                 elevation: 16,
//                                 style:
//                                 TextStyle(color: HexColor("#878787")),
//                                 underline: Container(
//                                   height: 0,
//                                 ),
//                                 onChanged: (String newValue) {
//                                   setState(() {
//                                     dropdowncountry = newValue;
//                                   });
//                                 },
//                                 items: <String>[
//                                   'لبنان',
//                                   'سوريا',
//                                   'فلسطين'
//                                 ].map<DropdownMenuItem<String>>(
//                                         (String value) {
//                                       return DropdownMenuItem<String>(
//                                         value: value,
//                                         child: Text(value),
//                                       );
//                                     }).toList(),
//                               ),
//                             ),
//                           )
//
//                         ],)
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Row(children: [
//                           baseText(
//                             title:
//                             " المدينة",
//                             color: HexColor("#878787"),
//                             size: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           SizedBox(width: 5,),
//
//                           Container(
//                             width:
//                             MediaQuery.of(context).size.width * 0.22,
//                             height: 25,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: HexColor("#DFE4EB"),
//                               ),
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(00)),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 8.0),
//                               child: DropdownButton<String>(
//                                 isExpanded: true,
//                                 value: dropdowncity,
//                                 hint: Text("بيروت"),
//                                 icon: Icon(
//                                   Icons.arrow_drop_down,
//                                   color: blueColor,
//                                 ),
//                                 iconSize: 24,
//                                 elevation: 16,
//                                 style:
//                                 TextStyle(color: HexColor("#878787")),
//                                 underline: Container(
//                                   height: 0,
//                                 ),
//                                 onChanged: (String newValue) {
//                                   setState(() {
//                                     dropdowncity = newValue;
//                                   });
//                                 },
//                                 items: <String>[
//                                   'بيروت',
//                                   'صيدا',
//                                   'صور'
//                                 ].map<DropdownMenuItem<String>>(
//                                         (String value) {
//                                       return DropdownMenuItem<String>(
//                                         value: value,
//                                         child: Text(value),
//                                       );
//                                     }).toList(),
//                               ),
//                             ),
//                           )
//
//                         ],)
//                       ],
//                     ),
//                   ]),
//               //////
//
//
//
//
//             ),
//             SizedBox(height: 40,),
//
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
//               child:
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Column(
//                       children: [
//                         Row(children: [
//                           baseText(
//                             title:
//                             " الجنس",
//                             color: HexColor("#878787"),
//                             size: 15.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           SizedBox(width: 5,),
//
//                           Container(
//                             width:
//                             MediaQuery.of(context).size.width * 0.22,
//                             height: 25,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: HexColor("#DFE4EB"),
//                               ),
//                               borderRadius:
//                               BorderRadius.all(Radius.circular(00)),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(right: 8.0),
//                               child: DropdownButton<String>(
//                                 isExpanded: true,
//                                 value: dropdownsex,
//                                 hint: Text("ذكر "),
//                                 icon: Icon(
//                                   Icons.arrow_drop_down,
//                                   color: blueColor,
//                                 ),
//                                 iconSize: 24,
//                                 elevation: 16,
//                                 style:
//                                 TextStyle(color: HexColor("#878787")),
//                                 underline: Container(
//                                   height: 0,
//                                 ),
//                                 onChanged: (String newValue) {
//                                   setState(() {
//                                     dropdownsex = newValue;
//                                   });
//                                 },
//                                 items: <String>[
//                                   'ذكر',
//                                   'أنثى'
//                                 ].map<DropdownMenuItem<String>>(
//                                         (String value) {
//                                       return DropdownMenuItem<String>(
//                                         value: value,
//                                         child: Text(value),
//                                       );
//                                     }).toList(),
//                               ),
//                             ),
//                           )
//
//                         ],)
//                       ],
//                     ),
//
//                   ]),
//               //////
//
//
//
//
//             ),
//
//
//           ],
//         )
//
//
//       ],
//     );
//
// }) );
//
//
//
// }