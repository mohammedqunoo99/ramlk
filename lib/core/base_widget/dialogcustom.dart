// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:maiel/Ui/AllProducts_page/bloc/products_event.dart';
// import 'package:maiel/Ui/login_page/page/login_page.dart';
// import 'package:maiel/core/style/base_color.dart';
// import 'package:maiel/model/categories_model/categories_list.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../app_localizations.dart';
// import '../app_localizations.dart';
// import '../app_localizations.dart';
// import '../app_localizations.dart';
// import 'base_click.dart';
// import 'base_text.dart';
//
// String dropdownValue = 'يوم واحد';
// String dropdownValue2;
//
// bool isSwitched = false;
// String dropdownBlood,
//     dropdownFilter,
//     dropdownType,
//     dropdownSex,
//     dropdownSexwatch,
//     dropdownPrice,
//     dropdownDiscount,
//     dropdownTypeDress,
//     dropdownColor,
//     dropdowSize,
//     dropdownSize;
// String dropdownClock, dropdownCenture, dropdownColor2;
// bool checkboxNew = false, checkboxDiscount = false;
// bool checkboxDesc = false, checkboxAsc = false;
// bool checkboxvalue1=false,checkboxvalue2=false;
// int new_arrived;
// String order_price='';
// showDialogFiltertest(var ctx) {
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             content: Builder(
//               builder: (context) {
//                 // Get available height and width of the build area of this widget. Make a choice depending on the size.
//                 var height = MediaQuery.of(context).size.height;
//                 var width = MediaQuery.of(context).size.width;
//
//                 return Container(
//                   height: height,
//                   width: width,
//                   child: Padding(
//                     padding: EdgeInsets.all(0),
//                     child: Column(
//                       //crossAxisAlignment: CrossAxisAlignment.center,
//                       //mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             Image.asset(
//                               'assets/images/results.png',
//                               color: blueColor,
//                               width: 30,
//                               height: 30,
//                             ),
//                             SizedBox(
//                               width: 4,
//                             ),
//                             baseText(
//                                 title: 'فرز نتائج',
//                                 color: blueColor,
//                                 size: 12.0),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//
//                         Padding(
//                           padding: EdgeInsets.only(left: 5, right: 5, top: 5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                             color: blueColor,
//                                             width: 1,
//                                           ),
//                                         ),
//                                         width: 18,
//                                         height: 18,
//                                         child: Theme(
//                                           data: ThemeData(
//                                             unselectedWidgetColor:
//                                                 Colors.transparent,
//                                           ),
//                                           child: Checkbox(
//                                             activeColor: Colors.transparent,
//                                             checkColor: blueColor,
//                                             value: checkboxvalue1,
//                                             tristate: false,
//                                             onChanged: (bool isChecked) {
//                                               setState(() {
//                                                 checkboxvalue1 = isChecked;
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 3,
//                                       ),
//                                       baseText(
//                                         title: "الفئة الرئيسية",
//                                         color: HexColor("#878787"),
//                                         size: 15.0,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               ),
//                               Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                             color: blueColor,
//                                             width: 1,
//                                           ),
//                                         ),
//                                         width: 18,
//                                         height: 18,
//                                         child: Theme(
//                                           data: ThemeData(
//                                             unselectedWidgetColor:
//                                                 Colors.transparent,
//                                           ),
//                                           child: Checkbox(
//                                             activeColor: Colors.transparent,
//                                             checkColor: blueColor,
//                                             value: checkboxvalue2,
//                                             tristate: false,
//                                             onChanged: (bool isChecked) {
//                                               setState(() {
//                                                 checkboxvalue2 = isChecked;
//                                               });
//                                             },
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 3,
//                                       ),
//                                       baseText(
//                                         title: "الفئة الثانوية",
//                                         color: HexColor("#878787"),
//                                         size: 15.0,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ],
//                                   )
//                                 ],
//                               )
//
//                               // Expanded(child:
//
//                               //  )
//                             ],
//                           ),
//                         ),
//
//                         /////
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 5.0, right: 5, top: 10),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         baseText(
//                                           title: " الدولة",
//                                           color: HexColor("#878787"),
//                                           size: 15.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               0.17,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: HexColor("#DFE4EB"),
//                                             ),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(00)),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 8.0),
//                                             child: DropdownButton<String>(
//                                               isExpanded: true,
//                                               value: dropdownBlood,
//                                               hint: Text("لبنان "),
//                                               icon: Icon(
//                                                 Icons.arrow_drop_down,
//                                                 color: blueColor,
//                                               ),
//                                               iconSize: 24,
//                                               elevation: 16,
//                                               style: TextStyle(
//                                                   color: HexColor("#878787")),
//                                               underline: Container(
//                                                 height: 0,
//                                               ),
//                                               onChanged: (String newValue) {
//                                                 setState(() {
//                                                   dropdownBlood = newValue;
//                                                 });
//                                               },
//                                               items: <String>[
//                                                 'لبنان',
//                                                 'سوريا',
//                                                 'فلسطين'
//                                               ].map<DropdownMenuItem<String>>(
//                                                   (String value) {
//                                                 return DropdownMenuItem<String>(
//                                                   value: value,
//                                                   child: Text(value),
//                                                 );
//                                               }).toList(),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         baseText(
//                                           title: " المدينة",
//                                           color: HexColor("#878787"),
//                                           size: 15.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               0.19,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: HexColor("#DFE4EB"),
//                                             ),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(00)),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 8.0),
//                                             child: DropdownButton<String>(
//                                               isExpanded: true,
//                                               value: dropdownBlood,
//                                               hint: Text("بيروت "),
//                                               icon: Icon(
//                                                 Icons.arrow_drop_down,
//                                                 color: blueColor,
//                                               ),
//                                               iconSize: 24,
//                                               elevation: 16,
//                                               style: TextStyle(
//                                                   color: HexColor("#878787")),
//                                               underline: Container(
//                                                 height: 0,
//                                               ),
//                                               onChanged: (String newValue) {
//                                                 setState(() {
//                                                   dropdownBlood = newValue;
//                                                 });
//                                               },
//                                               items: <String>[
//                                                 'بيروت',
//                                                 'صيدا',
//                                                 'صور'
//                                               ].map<DropdownMenuItem<String>>(
//                                                   (String value) {
//                                                 return DropdownMenuItem<String>(
//                                                   value: value,
//                                                   child: Text(value),
//                                                 );
//                                               }).toList(),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ]),
//                           //////
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 5.0, right: 5, top: 10),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Column(
//                                   children: [
//                                     Row(
//                                       children: [
//                                         baseText(
//                                           title: " الجنس",
//                                           color: HexColor("#878787"),
//                                           size: 15.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                         SizedBox(
//                                           width: 5,
//                                         ),
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width *
//                                               0.17,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                               color: HexColor("#DFE4EB"),
//                                             ),
//                                             borderRadius: BorderRadius.all(
//                                                 Radius.circular(00)),
//                                           ),
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(
//                                                 right: 8.0),
//                                             child: DropdownButton<String>(
//                                               isExpanded: true,
//                                               value: dropdownBlood,
//                                               hint: Text("ذكر "),
//                                               icon: Icon(
//                                                 Icons.arrow_drop_down,
//                                                 color: blueColor,
//                                               ),
//                                               iconSize: 24,
//                                               elevation: 16,
//                                               style: TextStyle(
//                                                   color: HexColor("#878787")),
//                                               underline: Container(
//                                                 height: 0,
//                                               ),
//                                               onChanged: (String newValue) {
//                                                 setState(() {
//                                                   dropdownBlood = newValue;
//                                                 });
//                                               },
//                                               items: <String>[
//                                                 'ذكر',
//                                                 'أنثى'
//                                               ].map<DropdownMenuItem<String>>(
//                                                   (String value) {
//                                                 return DropdownMenuItem<String>(
//                                                   value: value,
//                                                   child: Text(value),
//                                                 );
//                                               }).toList(),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ]),
//                           //////
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         });
//       });
// }
//
// showDialogSort(var ctx,var _bloc,_searchController) {
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new SimpleDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsets.only(left: 8, right: 8,bottom: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(),
//                       baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Order"),
//                           size: 14.0,
//                           textAlign: TextAlign.center,
//                           color: Colors.black),
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.pop(context);
//                         },
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.black,
//                         ),
//                       )
//
//
//                     ],
//                   )),
//               Padding(
//                 padding: EdgeInsets.only(left: 30, right: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//
//
//                         baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Newest"),
//                           color: Colors.black,
//                           size: 11.0,
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Card(
//                             elevation: 5,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: checkboxNew == false
//                                       ? Colors.transparent
//                                       : HexColor(color),
//                                   width: 1,
//                                 ),
//                               ),
//                               width: 18,
//                               height: 18,
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Colors.transparent,
//                                 ),
//                                 child: Checkbox(
//                                   activeColor: Colors.transparent,
//                                   checkColor: HexColor(color),
//                                   value: checkboxNew,
//                                   tristate: false,
//                                   onChanged: (bool isChecked) {
//                                     setState(() {
//                                       checkboxNew = isChecked;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 1,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//
//
//                         baseText(
//                           title: AppLocalizations.of(context)
//                               .translate("Discount"),
//                           color: Colors.black,
//                           size: 11.0,
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Card(
//                             elevation: 5,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: checkboxDiscount == false
//                                       ? Colors.transparent
//                                       : HexColor(color),
//                                   width: 1,
//                                 ),
//                               ),
//                               width: 18,
//                               height: 18,
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Colors.transparent,
//                                 ),
//                                 child: Checkbox(
//                                   activeColor: Colors.transparent,
//                                   checkColor: HexColor(color),
//                                   value: checkboxDiscount,
//                                   tristate: false,
//                                   onChanged: (bool isChecked) {
//                                     setState(() {
//                                       checkboxDiscount = isChecked;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 1,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//
//
//                         baseText(
//                           title: AppLocalizations.of(context)
//                                   .translate("Price") +
//                               "(" +
//                               AppLocalizations.of(context).translate("from") +
//                               " " +
//                               AppLocalizations.of(context).translate("above") +
//                               " - " +
//                               AppLocalizations.of(context).translate("to") +
//                               " " +
//                               AppLocalizations.of(context).translate("least") +
//                               ")",
//                           color: Colors.black,
//                           size: 11.0,
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Card(
//                             elevation: 5,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: checkboxDesc == false
//                                       ? Colors.transparent
//                                       : HexColor(color),
//                                   width: 1,
//                                 ),
//                               ),
//                               width: 18,
//                               height: 18,
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Colors.transparent,
//                                 ),
//                                 child: Checkbox(
//                                   activeColor: Colors.transparent,
//                                   checkColor: HexColor(color),
//                                   value: checkboxDesc,
//                                   tristate: false,
//                                   onChanged: (bool isChecked) {
//                                     setState(() {
//                                       checkboxDesc = isChecked;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 1,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//
//
//                         baseText(
//                           title: AppLocalizations.of(context)
//                                   .translate("Price") +
//                               "(" +
//                               AppLocalizations.of(context).translate("from") +
//                               " " +
//                               AppLocalizations.of(context).translate("least") +
//                               " - " +
//                               AppLocalizations.of(context).translate("to") +
//                               " " +
//                               AppLocalizations.of(context).translate("above") +
//                               ")",
//                           color: Colors.black,
//                           size: 11.0,
//                         ),
//                         SizedBox(
//                           width: 3,
//                         ),
//                         Card(
//                             elevation: 5,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: checkboxAsc == false
//                                       ? Colors.transparent
//                                       : HexColor(color),
//                                   width: 1,
//                                 ),
//                               ),
//                               width: 18,
//                               height: 18,
//                               child: Theme(
//                                 data: ThemeData(
//                                   unselectedWidgetColor: Colors.transparent,
//                                 ),
//                                 child: Checkbox(
//                                   activeColor: Colors.transparent,
//                                   checkColor: HexColor(color),
//                                   value: checkboxAsc,
//                                   tristate: false,
//                                   onChanged: (bool isChecked) {
//                                     setState(() {
//                                       checkboxAsc = isChecked;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                     Padding(padding: EdgeInsets.only(bottom: 10)),
//                     baseClick(
//                         // width: 200,
//                         height: 50,
//                         color: HexColor(color),
//                         title: AppLocalizations.of(context).translate("Apply"),
//                         colorTitle: Colors.white,
//                         sizeTitle: 14.0,
//                         FontWeight: FontWeight.bold,
//                         onTap: () {
//                           if(checkboxNew==true){
//                             setState(()
//                             {
//                               new_arrived=1;
//
//                             });
//                           }else{
//                             setState(()
//                             {
//                               new_arrived=0;
//
//                             });
//                           }
//                           if(checkboxDesc==true){
//                             setState(()
//                             {
//                               order_price='DESC';
//
//                             });
//                           }
//                           else if(checkboxAsc==true){
//                             setState(()
//                             {
//                               order_price='ASC';
//
//                             });
//                           }
//                           else{
//
//                           }
//                           print(
//                             "new arrived:"+new_arrived.toString()
//                                 +"discount:"+checkboxDiscount.toString()
//                                 +"order price: "+order_price
//                           );
//
//
//                           _bloc.add(GetAllProducts((b) => b
//                               ..is_new=new_arrived
//                               ..discount=checkboxDiscount
//                               ..order_price=order_price
//                               ..search=_searchController
//
//                           ));
//                           Navigator.pop(context);
//                           setState((){
//                             checkboxDiscount=false;
//                             checkboxAsc=false;
//                             checkboxDesc=false;
//                             checkboxNew=false;
//                           });
//
//                         }),
//                   ],
//                 ),
//               )
//             ],
//           );
//         });
//       });
// }
// var _minimum=new TextEditingController();
// var _maximum =new TextEditingController();
//
// var _minimumdress=new TextEditingController();
// var _maximumdress =new TextEditingController();
//
// var _minimumwatch=new TextEditingController();
// var _maximumwatch =new TextEditingController();
//
// class option {
//   String option_name;
//   String option_value;
//
//   option(this.option_name, this.option_value);
//
//   Map<String, dynamic> TojsonData() {
//     var map = new Map<String, dynamic>();
//     map["option_name"] = option_name;
//     map["option_value"] = option_value;
//
//     return map;
//   }
// }
// List<Map> list = new List();
// Map filter;
// var filters;
// addfilter(String option_name,String option_value ){
//   option o=option(option_name,option_value);
//
//   list.add(o.TojsonData());
//   //filters={'filters':list};
//
//   print("oooooo"+list.toString());
// }
//
//
//   showDialogFilter(var ctx,List<CategoriesList>categories,
//     List<WatchModel>watch,List<WatchModel>dress,List<WatchModel>perfumes,
//       _bloc,_searchController
//     ) {
//
//
//   Size sizeAware=MediaQuery.of(ctx).size;
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new SimpleDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsetsDirectional.only(start: sizeAware.width*0.04, end: sizeAware.width*0.04),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         onTap: (){
//                           Navigator.pop(context);
//                         },
//                         child:
//
//                       Icon(
//                         Icons.close,
//                         color: Colors.black,
//                       )),
//                       baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Filter"),
//                           size: sizeAware.width*0.04,
//                           textAlign: TextAlign.center,
//                           color: Colors.black),
//                       Container()
//                     ],
//                   )),
//               Padding(
//                 padding: EdgeInsetsDirectional.only(start: sizeAware.width*0.04, end: sizeAware.width*0.04),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding:
//                            EdgeInsetsDirectional.only(start: sizeAware.width*0.01, end: sizeAware.width*0.01, top: sizeAware.width*0.01),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Order"),
//                               color: Colors.black,
//                               size: sizeAware.width*0.04,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding:  EdgeInsetsDirectional.only(start: 8),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownFilter,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Order")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownFilter = newValue;
//                                       print(dropdownFilter);
//                                     });
//                                   },
//                                   // items: <String>['العطور', 'الثوب العماني', 'watch']
//                                   //     .map<DropdownMenuItem<String>>(
//                                   //         (String value) {
//                                   //       return DropdownMenuItem<String>(
//                                   //         value: value,
//                                   //         child: Text(value),
//                                   //       );
//                                   //     }).toList(),
//                                   items:categories
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.id.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Padding(padding: EdgeInsets.only(bottom: 10)),
//                     baseClick(
//                         // width: 200,
//                         height: 50,
//                         color: HexColor(color),
//                         title: AppLocalizations.of(context).translate("Apply"),
//                         colorTitle: Colors.white,
//                         sizeTitle: 14.0,
//                         FontWeight: FontWeight.bold,
//                         onTap: () {
//                           Navigator.pop(ctx);
//                           if (dropdownFilter == "4") {
//                             showDialogFilterparfum(context,perfumes.toList(),_bloc,_searchController,dropdownFilter);
//                           } else if (dropdownFilter == "5") {
//                             showDialogFilterdress(context,dress.toList(),_bloc,_searchController,dropdownFilter);
//                           } else if (dropdownFilter == "1") {
//                             print("hn");
//                             showDialogFilterclock(context,
//                                 watch.toList(),_bloc,_searchController,dropdownFilter
//                             );
//                           }
//                         }),
//                   ],
//                 ),
//               )
//             ],
//           );
//         });
//       });
// }
// String watchnametype='';
// String watchnamegender='';
// int watchdiscount;
//
// String perfumnametype='';
// String perfumnamegender='';
// int perfumiscount;
//
// String dressnamesize='';
// String dressnamecolor='';
// String dressnamefabrictype='';
//
// showDialogFilterparfum(var ctx,List<WatchModel>perfumes,_bloc,_searchController,dropdownFilter) {
//   list.clear();
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new SimpleDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsets.only(left: 8, right: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(),
//                       baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Filter"),
//                           size: 14.0,
//                           textAlign: TextAlign.center,
//                           color: Colors.black),
//                       GestureDetector(
//                           onTap:(){
//                             Navigator.pop(context);
//                           },
//                           child:
//                           Icon(
//                             Icons.close,
//                             color: Colors.black,
//                           )),
//
//
//
//                     ],
//                   )),
//               Padding(
//                 padding: EdgeInsets.only(left: 5, right: 5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Type"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownType,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Type")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownType = newValue;
//                                       perfumnametype=perfumes[0].name;
//                                       addfilter(perfumnametype, dropdownType);
//                                     });
//                                   },
//                                   items: perfumes[0].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Gender"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownSex,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Gender")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownSex = newValue;
//                                       perfumnamegender=perfumes[1].name;
//                                       addfilter(perfumnamegender, dropdownSex);
//
//                                     });
//                                   },
//                                   items: perfumes[1].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Discount Ratio"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownDiscount,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Discount Ratio")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownDiscount = newValue;
//                                     });
//                                   },
//                                   items: <String>[AppLocalizations.of(context).translate('Under 25%'),
//           AppLocalizations.of(context).translate('25% to 50%'),
//           AppLocalizations.of(context).translate('50% & Above')]
//                                       .map<DropdownMenuItem<String>>(
//                                           (String value) {
//                                     return DropdownMenuItem<String>(
//                                       value: value,
//                                       child: Text(value),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 5.0, right: 5, top: 10),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Row(
//                               children: [
//                                 baseText(
//                                   title: AppLocalizations.of(context)
//                                       .translate("Price"),
//                                   color: Colors.black,
//                                   size: 14.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ],
//                             ),
//
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   Container(
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                       border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.all(Radius.circular(2)),
//                                     ),
//                                     height: 40,
//                                     width: MediaQuery.of(context).size.width*0.3,
//                                     child: TextField(
//                                       textAlign: TextAlign.center,
//                                       controller:_minimum,
//                                       keyboardType: TextInputType.visiblePassword,
//                                       decoration: InputDecoration(
//                                         hintText:AppLocalizations.of(context).translate('minimum'),
//                                         border: InputBorder.none,
//                                         fillColor: Colors.white,
//                                         labelStyle:  TextStyle(
//                                             fontFamily: 'font',
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                         contentPadding: EdgeInsets.only(bottom: 10),
//                                         hintStyle: TextStyle(
//                                             fontFamily: 'font',
//                                             color: Color(0xffBCBCBC),
//                                             fontSize:14,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ),
//                                   Text(AppLocalizations.of(context).translate('to'),style: TextStyle(
//                                       fontFamily: 'font',
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w400),),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.all(Radius.circular(2)),
//                                     ),
//                                     height: 40,
//                                     width: MediaQuery.of(context).size.width*0.3,
//                                     child: TextField(
//                                       textAlign: TextAlign.center,
//                                       keyboardType: TextInputType.visiblePassword,
//                                       controller:_maximum,
//                                       decoration: InputDecoration(
//                                         contentPadding: EdgeInsets.only(bottom: 10),
//
//                                         hintText:AppLocalizations.of(context).translate('maximum'),
//                                         border: InputBorder.none,
//                                         fillColor: Colors.white,
//                                         labelStyle:  TextStyle(
//                                             fontFamily: 'font',
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                         hintStyle: TextStyle(
//                                             fontFamily: 'font',
//                                             color: Color(0xffBCBCBC),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ]),
//                       //////
//                     ),
//                     Padding(padding: EdgeInsets.only(bottom: 10)),
//                     baseClick(
//                         // width: 200,
//                         height: 50,
//                         color: HexColor(color),
//                         title: AppLocalizations.of(context).translate("Apply"),
//                         colorTitle: Colors.white,
//                         sizeTitle: 14.0,
//                         FontWeight: FontWeight.bold,
//                         onTap: () {
//                           if(dropdownDiscount==AppLocalizations.of(context).translate("Under 25%")){
//                            setState((){
//                              perfumiscount=1;
//
//                            });
//                           }
//                           else if(dropdownDiscount==AppLocalizations.of(context).translate("25% to 50%")){
//                             setState((){
//                               perfumiscount=2;
//
//                             });
//
//                           }
//                           else if(dropdownDiscount==AppLocalizations.of(context).translate("50% & Above")){
//                             setState((){
//                               perfumiscount=3;
//
//                             });
//                           }
//                           else {}
//                             print("bn"+list.toString());
//                           _bloc.add(GetAllProducts((b) => b
//                             ..filters=list
//                             ..category_id=dropdownFilter
//                             ..price_from=_minimum.text
//                             ..price_to=_maximum.text
//                             ..discount_percentage=perfumiscount
//                             ..search=_searchController.text.toString()
//                             ..is_new=new_arrived
//                             ..discount=checkboxDiscount
//                             ..order_price=order_price
//
//                           ));
//                           Navigator.pop(context);
//
//
//
//
//
//
//
//                           // Navigator.pop(ctx);
//                           // if (dropdownFilter == "العطور") {
//                           // } else if (dropdownFilter == "الثوب العماني") {
//                           // } else if (dropdownFilter == "للساعات") {}
//                         }),
//                   ],
//                 ),
//               )
//             ],
//           );
//         });
//       });
// }
//
// showDialogFilterdress(var ctx,List<WatchModel>dress,_bloc,_searchController,dropdownFilter) {
//   list.clear();
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new SimpleDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsetsDirectional.only(start: 8, end: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(),
//                       baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Filter"),
//                           size: 14.0,
//                           textAlign: TextAlign.center,
//                           color: Colors.black),
//                       GestureDetector(
//                           onTap:(){
//                             Navigator.pop(context);
//                           },
//                           child:
//                           Icon(
//                             Icons.close,
//                             color: Colors.black,
//                           )),
//
//                     ],
//                   )),
//               Padding(
//                 padding: EdgeInsets.only(left: 5, right: 5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Size"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//
//                                   isExpanded: true,
//                                   value: dropdownSize,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Size")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownSize = newValue;
//                                       dressnamesize=dress[0].name;
//                                       addfilter(dressnamesize, dropdownSize);
//                                     });
//                                   },
//                                   items: dress[0].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Color"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownColor,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Color")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownColor = newValue;
//                                       dressnamecolor=dress[1].name;
//                                       addfilter(dressnamecolor, dropdownColor);
//                                     });
//                                   },
//                                   items: dress[1].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Fabric Type"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownTypeDress,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Fabric Type")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownTypeDress = newValue;
//                                       dressnamefabrictype=dress[2].name;
//                                       addfilter(dressnamefabrictype, dropdownTypeDress);
//                                     });
//                                   },
//                                   items: dress[2].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 5.0, right: 5, top: 10),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Row(
//                               children: [
//                                 baseText(
//                                   title: AppLocalizations.of(context)
//                                       .translate("Price"),
//                                   color: Colors.black,
//                                   size: 14.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ],
//                             ),
//
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   Container(
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                       border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.all(Radius.circular(2)),
//                                     ),
//                                     height: 40,
//                                     width: MediaQuery.of(context).size.width*0.3,
//                                     child: TextField(
//                                       textAlign: TextAlign.center,
//                                       controller:_minimumdress,
//                                       keyboardType: TextInputType.visiblePassword,
//                                       decoration: InputDecoration(
//                                         hintText:AppLocalizations.of(context).translate('minimum'),
//                                         border: InputBorder.none,
//                                         fillColor: Colors.white,
//                                         labelStyle:  TextStyle(
//                                             fontFamily: 'font',
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                         contentPadding: EdgeInsets.only(bottom: 10),
//                                         hintStyle: TextStyle(
//                                             fontFamily: 'font',
//                                             color: Color(0xffBCBCBC),
//                                             fontSize:14,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ),
//                                   Text(AppLocalizations.of(context).translate('to'),style: TextStyle(
//                                       fontFamily: 'font',
//                                       color: Colors.black,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w400),),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//
//                                       color:Colors.white,
//                                       borderRadius: BorderRadius.all(Radius.circular(2)),
//                                     ),
//                                     height: 40,
//                                     width: MediaQuery.of(context).size.width*0.3,
//                                     child: TextField(
//                                       textAlign: TextAlign.center,
//                                       keyboardType: TextInputType.visiblePassword,
//                                       controller:_maximumdress,
//                                       decoration: InputDecoration(
//                                         contentPadding: EdgeInsets.only(bottom: 10),
//
//                                         hintText:AppLocalizations.of(context).translate('maximum'),
//                                         border: InputBorder.none,
//                                         fillColor: Colors.white,
//                                         labelStyle:  TextStyle(
//                                             fontFamily: 'font',
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                         hintStyle: TextStyle(
//                                             fontFamily: 'font',
//                                             color: Color(0xffBCBCBC),
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ]),
//                       //////
//                     ),
//                     Padding(padding: EdgeInsets.only(bottom: 10)),
//                     baseClick(
//                         // width: 200,
//                         height: 50,
//                         color: HexColor(color),
//                         title: AppLocalizations.of(context).translate("Apply"),
//                         colorTitle: Colors.white,
//                         sizeTitle: 14.0,
//                         FontWeight: FontWeight.bold,
//                         onTap: () {
//                           _bloc.add(GetAllProducts((b) => b
//                             ..filters=list
//                           ..category_id=dropdownFilter
//                             ..price_from=_minimumdress.text
//                             ..price_to=_maximumdress.text
//                             ..search=_searchController.text.toString()
//                             ..is_new=new_arrived
//                             ..discount=checkboxDiscount
//                             ..order_price=order_price
//
//                           ));
//
//                           Navigator.pop(context);
//                           // if (dropdownFilter == "العطور") {
//                           // } else if (dropdownFilter == "الثوب العماني") {
//                           // } else if (dropdownFilter == "للساعات") {}
//                         }),
//                   ],
//                 ),
//               )
//             ],
//           );
//         });
//       });
// }
// String watchgendername;
// String watchcolorname;
// String watchbeltcolorname;
// String watchbeltmaterialname;
// String watchclockmvmentname;
// String watchwaterproofname;
//
// String dropdownDiscountWatch,dropdownColorwatch,dropdownBeltColor,waterproofvalue;
// showDialogFilterclock(var ctx,
//     List<WatchModel>watch,_bloc,_searchController,dropdownFilter
//     ) {
//   list.clear();
//   showDialog(
//       context: ctx,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return new SimpleDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             elevation: 0.0,
//             // title: new Text('Do you like Flutter?'),
//             children: <Widget>[
//               Padding(
//                   padding: EdgeInsets.only(left: 8, right: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       GestureDetector(
//                         onTap: (){Navigator.pop(context);},
//                       child:Icon(
//                         Icons.close,
//                         color: Colors.black,
//                       )),
//                       baseText(
//                           title:
//                               AppLocalizations.of(context).translate("Filter"),
//                           size: 14.0,
//                           textAlign: TextAlign.center,
//                           color: Colors.black),
//                       Container()
//                     ],
//                   )),
//               Padding(
//                 padding: EdgeInsets.only(left: 5, right: 5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Gender"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownSexwatch,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Gender")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownSexwatch = newValue;
//                                       watchgendername=watch[0].name;
//                                       addfilter(watchgendername, dropdownSexwatch);
//
//                                     });
//                                   },
//                                   items:watch[0].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Watch Color"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownColorwatch,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Watch Color")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownColorwatch = newValue;
//                                       watchcolorname=watch[1].name;
//                                       addfilter(watchcolorname, dropdownColorwatch);
//                                     });
//                                   },
//                                   items: watch[1].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Belt Color"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownBeltColor,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Belt Color")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownBeltColor = newValue;
//                                       watchbeltcolorname=watch[2].name;
//                                       addfilter(watchbeltcolorname, dropdownBeltColor);
//                                     });
//                                   },
//                                   items: watch[2].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Belt Material"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownCenture,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Belt Material")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownCenture = newValue;
//                                       watchbeltmaterialname=watch[3].name;
//                                       addfilter(watchbeltmaterialname, dropdownCenture);
//                                     });
//                                   },
//                                   items: watch[3].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Clock Mouvement"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownClock,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Clock Mouvement"),style: TextStyle(fontSize: 12),),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownClock = newValue;
//                                       watchclockmvmentname=watch[4].name;
//                                       addfilter(watchclockmvmentname, dropdownClock);
//                                     });
//                                   },
//                                   items: watch[4].values
//                                       .map((value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value.name.toString(),
//                                       child: Text(
//                                         value.name,
//                                       ),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                            top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Waterproof"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: 70,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: Switch(
//                                   value: isSwitched,
//                                   onChanged: (value) {
//                                     setState(() {
//                                       isSwitched = value;
//                                       print(isSwitched);
//                                       if(isSwitched==true){
//                                         setState((){
//                                           waterproofvalue='yes';
//
//                                         });
//                                       }else {
//                                         setState((){
//                                           waterproofvalue='no';
//
//                                         });
//                                       }
//                                       watchwaterproofname=watch[5].name;
//                                       addfilter(watchwaterproofname, waterproofvalue);
//
//                                     });
//                                   },
//                                   activeTrackColor: HexColor(color),
//                                   activeColor: Colors.white,
//                                   inactiveThumbColor: HexColor("#DFE4EB"),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only( top: 10),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Row(
//                               children: [
//                                 baseText(
//                                   title: AppLocalizations.of(context)
//                                       .translate("Price"),
//                                   color: Colors.black,
//                                   size: 14.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ],
//                             ),
//
//                             SizedBox(
//                               width: 5,
//                             ),
//                              Padding(
//                                 padding: const EdgeInsets.only(),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: <Widget>[
//                                     Container(
//                                       alignment: Alignment.center,
//                                       decoration: BoxDecoration(
//                                         border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//                                         color:Colors.white,
//                                         borderRadius: BorderRadius.all(Radius.circular(2)),
//                                       ),
//                                       height: 40,
//                                       width: MediaQuery.of(context).size.width*0.3,
//                                       child: TextField(
//                                         textAlign: TextAlign.center,
//                                         controller:_minimumwatch,
//                                         keyboardType: TextInputType.visiblePassword,
//                                         decoration: InputDecoration(
//                                           hintText:AppLocalizations.of(context).translate('minimum'),
//                                           border: InputBorder.none,
//                                           fillColor: Colors.white,
//                                           labelStyle:  TextStyle(
//                                               fontFamily: 'font',
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400),
//                                           contentPadding: EdgeInsets.only(bottom: 10),
//                                           hintStyle: TextStyle(
//                                               fontFamily: 'font',
//                                               color: Color(0xffBCBCBC),
//                                               fontSize:14,
//                                               fontWeight: FontWeight.w400),
//                                         ),
//                                       ),
//                                     ),
//                                     Text(AppLocalizations.of(context).translate('to'),style: TextStyle(
//                                         fontFamily: 'font',
//                                         color: Colors.black,
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w400),),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         border :Border.all(width: 1.0, color:Color(0xffBCBCBC), ) ,
//
//                                         color:Colors.white,
//                                         borderRadius: BorderRadius.all(Radius.circular(2)),
//                                       ),
//                                       height: 40,
//                                       width: MediaQuery.of(context).size.width*0.3,
//                                       child: TextField(
//                                         textAlign: TextAlign.center,
//                                         keyboardType: TextInputType.visiblePassword,
//                                         controller:_maximumwatch,
//                                         decoration: InputDecoration(
//                                           contentPadding: EdgeInsets.only(bottom: 10),
//
//                                           hintText:AppLocalizations.of(context).translate('maximum'),
//                                           border: InputBorder.none,
//                                           fillColor: Colors.white,
//                                           labelStyle:  TextStyle(
//                                               fontFamily: 'font',
//                                               color: Colors.white,
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400),
//                                           hintStyle: TextStyle(
//                                               fontFamily: 'font',
//                                               color: Color(0xffBCBCBC),
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                           ]),
//                       //////
//                     ),
//                     Divider(
//                       color: HexColor("#DCDCDC"),
//                       thickness: 0.5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 5.0, right: 5, top: 10, bottom: 10),
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             baseText(
//                               title: AppLocalizations.of(context)
//                                   .translate("Discount Ratio"),
//                               color: Colors.black,
//                               size: 14.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width * 0.3,
//                               height: 44,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   color: HexColor("#DFE4EB"),
//                                 ),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(00)),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsetsDirectional.only(start: 8.0),
//                                 child: DropdownButton<String>(
//                                   isExpanded: true,
//                                   value: dropdownDiscountWatch,
//                                   hint: Text(AppLocalizations.of(context)
//                                       .translate("Discount Ratio")),
//                                   icon: Icon(
//                                     Icons.arrow_drop_down,
//                                     color: HexColor(color),
//                                   ),
//                                   iconSize: 24,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.black),
//                                   underline: Container(
//                                     height: 0,
//                                   ),
//                                   onChanged: (String newValue) {
//                                     setState(() {
//                                       dropdownDiscountWatch = newValue;
//                                     });
//                                   },
//                                   items: <String>[AppLocalizations.of(context)
//               .translate('Under 25%'),
//           AppLocalizations.of(context)
//               .translate('25% to 50%')
//                                     ,AppLocalizations.of(context)
//               .translate('50% & Above')
//                                   ]
//                                       .map<DropdownMenuItem<String>>(
//                                           (String value) {
//                                     return DropdownMenuItem<String>(
//                                       value: value,
//                                       child: Text(value),
//                                     );
//                                   }).toList(),
//                                 ),
//                               ),
//                             )
//                           ]),
//                       //////
//                     ),
//                     Padding(padding: EdgeInsets.only(bottom: 10)),
//                     baseClick(
//                         // width: 200,
//                         height: 50,
//                         color: HexColor(color),
//                         title: AppLocalizations.of(context).translate("Apply"),
//                         colorTitle: Colors.white,
//                         sizeTitle: 14.0,
//                         FontWeight: FontWeight.bold,
//                         onTap: () {
//                           if(dropdownDiscountWatch==AppLocalizations.of(context).translate("Under 25%")){
//                             setState((){
//                               watchdiscount=1;
//
//                             });
//                           }
//                           else if(dropdownDiscountWatch==AppLocalizations.of(context).translate("25% to 50%")){
//                             setState((){
//                               watchdiscount=2;
//
//                             });
//
//                           }
//                           else if(dropdownDiscountWatch==AppLocalizations.of(context).translate("50% & Above")){
//                             setState((){
//                               watchdiscount=3;
//
//                             });
//                           }
//                           else {}
//                           print("bn"+list.toString());
//                           _bloc.add(GetAllProducts((b) => b
//                             ..filters=list
//                           ..category_id=dropdownFilter
//                             ..price_from=_minimumwatch.text
//                             ..price_to=_maximumwatch.text
//                             ..discount_percentage=watchdiscount
//                             ..search=_searchController.text.toString()
//                             ..is_new=new_arrived
//                             ..discount=checkboxDiscount
//                             ..order_price=order_price
//
//                           ));
//
//
//
//                           Navigator.pop(context);
//
//                         }),
//                   ],
//                 ),
//               )
//             ],
//           );
//         });
//       });
// }
// showLogin(var context){
//   return  AwesomeDialog(
//     context: context,
//     customHeader: Container(
//       child: Icon(
//         Icons.error_outline,
//         size: 100,
//         color: HexColor(color),
//       ),
//     ),
//     btnCancelText: AppLocalizations.of(context).translate("Cancel"),
//     btnOkText: AppLocalizations.of(context).translate("Ok"),
//     btnOkColor: HexColor(color),
//     dialogType: DialogType.INFO,
//     animType: AnimType.BOTTOMSLIDE,
//     title:
//     AppLocalizations.of(context).translate("Login"),
//
//     desc:
//     AppLocalizations.of(context).translate("You must be logged in"),
//
//     btnCancelOnPress: () {},
//     btnOkOnPress: () {
//       WidgetsBinding.instance.addPostFrameCallback((_) =>
//           Navigator.of(context).push(
//               MaterialPageRoute(builder: (context) => LoginPage())));
//     },
//   )..show();
// }
//
//
