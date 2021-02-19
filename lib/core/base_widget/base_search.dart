// import 'package:flutter/material.dart';
// import 'package:maiel/Ui/AllProducts_page/all_products_page.dart';
// import 'package:maiel/Ui/AllProducts_page/bloc/products_event.dart';
// import 'package:maiel/Ui/home_page/widget/text_card.dart';
// import 'package:maiel/core/base_widget/dialogcustom.dart';
// import 'package:maiel/core/style/base_color.dart';
// import 'package:maiel/model/categories_model/categories_list.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';
//
// import '../app_localizations.dart';
//
// Widget baseSearch(_searchController, context,List<CategoriesList>categories,
//     List<WatchModel>watch,List<WatchModel>dress,List<WatchModel>perfumes,var _bloc
//     ){
//     //List<WatchModel>dress, List<WatchModel>perfumes) {
//   return
//     categories.isNotEmpty&&watch.isNotEmpty&&dress.isNotEmpty&&perfumes.isNotEmpty?
//   Padding(
//       padding: EdgeInsets.only(left: 0, right: 0),
//       child:
//
//               Row(
//                 children: [
//                   Flexible(
//                       child: textCard(
//                         name: AppLocalizations.of(context)
//                             .translate("Type a word to Search ..."),
//                         isPassword: false,
//                         height: 36.0,
//                         controller: _searchController,
//                         prefixIcon:
//                         Padding(padding: EdgeInsetsDirectional.only(bottom: 5),
//                           child:
//                         GestureDetector(
//                             onTap: (){
//                               _bloc.add(GetAllProducts((b) => b
//                                 ..is_new=new_arrived
//                                 ..discount=checkboxDiscount
//                                 ..order_price=order_price
//                                 ..search=_searchController.text
//
//                               ));
//
//                             },
//                             child:  Image.asset(
//                               "assets/images/search.png",
//                               width: 13,
//                               height: 14,
//                             ))),
//                         suffixIcon:
//                         Padding(padding: EdgeInsetsDirectional.only(bottom: 5),
//                         child:
//                         GestureDetector(
//                             onTap: () {
//                               showDialogFilter(context,
//                                   categories.toList(),
//                                   watch.toList(),
//                                   dress.toList(),
//                                   perfumes.toList(),_bloc,_searchController
//                               );
//                             },
//                             child: Image.asset(
//                               "assets/images/filter.png",
//                               width: 17,
//                               height: 17,
//                             ))),
//                       )),
//                   GestureDetector(
//                       onTap: () {
//                         showDialogSort(context,_bloc,_searchController.text);
//                       },
//                       child: Container(
//                         width: 36,
//                         height: 36,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: HexColor(color)),
//                         child: Image.asset(
//                           "assets/images/sort.png",
//                           width: 16.34,
//                           height: 13.81,
//                         ),
//                       ))
//                 ],
//               )
//
//
//   ):
//   Container();
// }
// bool isRTL;
//
// Widget baseSearchHome(_searchController, context
//     ){
//   Size sizeAware=MediaQuery.of(context).size;
//   TextDirection currentDirection = Directionality.of(context);
//   isRTL = currentDirection == TextDirection.rtl;
//   //List<WatchModel>dress, List<WatchModel>perfumes) {
//   return
//      Padding(
//         padding: EdgeInsets.only(left: 0, right: 0),
//         child: Row(
//           children: [
//             Flexible(
//                 child: textCard(
//                   name: AppLocalizations.of(context)
//                       .translate("Type a word to Search ..."),
//                   isPassword: false,
//                   height: 36.0,
//                   controller: _searchController,
//                   prefixIcon: Image.asset(
//                     "assets/images/search.png",
//                     width: 13,
//                     height: 14,
//                   ),
//
//                 )),
//             GestureDetector(
//               onTap: (){
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) =>
//                         AllProductsList(0,neww: 1,search:_searchController.text)));
//               },
//             child:
//             Container(
//               height: 45,//sizeAware.height * 0.07,
//               width: sizeAware.width * 0.15,
//               decoration: BoxDecoration(
//                   color: HexColor(color),
//                   borderRadius: BorderRadius.only(
//
//                     topLeft: isRTL ?Radius.circular(25):Radius.circular(0) ,
//                     bottomLeft: isRTL ?Radius.circular(25):Radius.circular(0),
//                     topRight:isRTL ?Radius.circular(0):Radius.circular(25),
//                     bottomRight:isRTL ?Radius.circular(0):Radius.circular(25),
//
//
//
//
//                   )),
//               child: Icon(
//                 Icons.image_search,
//                 size: sizeAware.width * 0.08,
//                 color: Colors.white,
//               ),
//             ))
//           ],
//         ));
// }
//
