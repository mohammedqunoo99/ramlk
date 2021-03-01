import 'package:flutter/material.dart';
import 'package:ramlk/core/base_widget/base_click-2.dart';
import 'package:ramlk/core/base_widget/constent.dart';
import 'package:ramlk/core/style/base_color.dart';
import 'package:ramlk/UI/search_page/appbar.dart';

  String type ='فواكهه';
String type1 = 'خضراوات';
String type2 = 'فواكهه';
String type3 = 'حمضيات';
String type4 = 'لوزيات';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  String type ='فواكهه';


  final _userNameController = TextEditingController();
  int isSelected1 = 0;
  int isSelected2 = 0;
  int isSelected3 = 0;
  int isSelected4 = 0;
  int isSelected5 = 0;
  int isSelected6 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            appbar(context,
            onTap: () {

      },
        title: 'البحث',

      ),
            Column(
              mainAxisAlignment:MainAxisAlignment.center ,

              children: [
               Container(
                 padding:EdgeInsets.only(top: 20,right: 40),
                 child: Column(
                   mainAxisAlignment:MainAxisAlignment.center ,

                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('اسم الصنف',
                         style: TextStyle(fontSize: 20,),
                         ),

                       ],
                     ),

                     Container(
                       alignment: Alignment.center,
                       height: 75,
                       padding: EdgeInsets.only(left: 40,right: 0,top: 5,bottom: 10),

                       child:  _buildTextField(
                         context: context,
                         obscureText: false,
                         controller: _userNameController,
                         hintText: '                                                                        ...الاسم' ,

                         TextAlign : TextAlign.end,
                       ),

                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('نوع الصنف',
                           style: TextStyle(fontSize: 20,),
                         ),

                       ],
                     ),
                 Container(
                   padding: EdgeInsets.only(left: 40,right: 0,top: 0,bottom: 0),

                       child:Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),

                     ),



                     child: Container(
                       // alignment: Alignment.center,
                       height: 50,
                       // width: 270,
                       padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
                       child: Container(
                           color: Colors.white,
                           child: Row(
                             children: [
                               // Spacer(),
                               IconButton(icon:new Icon(Icons.keyboard_arrow_down_rounded),
                                 color:Colors.black45,
                                 iconSize: 30,
                                 onPressed: (){
                                   showShare(context);
                                 },
                               ),
                               Spacer(),
                               Text('$type'),


                               // Spacer(),

                             ],
                           )
                       ),

                     ),
                   ),

                 ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('السعر/الكيلو',
                           style: TextStyle(fontSize: 20,),
                         ),

                       ],
                     ),
                     Container(
                       alignment: Alignment.center,
                       height: 75,
                       padding: EdgeInsets.only(left: 40,right: 0,top: 5,bottom: 10),

                       child:  _buildTextField(
                         context: context,
                         obscureText: false,
                         controller: _userNameController,
                         hintText: '                                                                        10.00' ,

                         TextAlign : TextAlign.end,
                       ),

                     ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('التقييم',
                           style: TextStyle(fontSize: 20,),
                         ),

                       ],
                     ),
                     Container(
                       alignment: Alignment.center,
                       height: 70,
                       padding: EdgeInsets.only(left: 30,right: 0,top: 5,bottom: 10),

                       child:Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         IconButton(icon:new Icon(Icons.star),
                           color: (isSelected1 == 0) ? Colors.black45 : Colors.yellow,
                         iconSize: 30,
                           onPressed: (){
                             isSelected1 = 0;

                           },
                         ),
                         IconButton(icon:new Icon(Icons.star),
                           color: (isSelected1 == 1) ? Colors.black45 : Colors.yellow,
                           iconSize: 30,
                           onPressed: (){
                             isSelected1 = 1;

                           },
                         ),
                         IconButton(icon:new Icon(Icons.star),
                           color: (isSelected1 == 2) ? Colors.black45 : Colors.yellow,
                           iconSize: 30,
                           onPressed: (){
                             isSelected1 =2;

                           },
                         ),
                         IconButton(icon:new Icon(Icons.star),
                           color: (isSelected1 == 3) ? Colors.black45 : Colors.yellow,
                           iconSize: 30,
                           onPressed: (){
                             isSelected1 = 3;

                           },
                         ),
                         IconButton(icon:new Icon(Icons.star),
                           color: (isSelected1 == 4) ? Colors.black45 : Colors.yellow,
                           iconSize: 30,
                           onPressed: (){
                             isSelected1 = 4;

                           },
                         ),
                       ],
                       ),

                     ),
                   ],
                 ),
               ),
                Container(
                  padding: EdgeInsets.all(20),
margin: EdgeInsets.only(top: 20),
                  child: baseClick2(
                    // onTap: () {
                    //   if(_phoneControllerlogin.text.isEmpty){
                    //     setState(() {
                    //       vmaillogin="red";
                    //       v="";
                    //       textphonelogin="";
                    //       textphonelogin=AppLocalizations.of(context).translate("phone required");
                    //
                    //     });
                    //   }
                    //   else  {
                    //     _bloc.add(TryLogin((b) => b
                    //       ..mobile=_phoneControllerlogin.text
                    //
                    //     ));
                    //
                    //   }
                    // },
                      title: 'ابحث ',


                      // AppLocalizations.of(context).translate("Get Started"),
                      color: Color(0xff79A316),
                      colorTitle: Colors.white,
                      height: 50.0,
                      radius: 20.0,
                      sizeTitle: 17.0,
                      FontWeight: FontWeight.bold
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
Widget _buildTextField({
  BuildContext context,
  TextEditingController controller,
  TextInputType textInputType,
  IconData icon,
  Function onPressIcon,
  bool obscureText,
  String hintText,
   TextAlign TextAlign,
}) {
  return Row(
    children: [
      Expanded(
          child:Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),

            ),
            child:  TextField(

            style: TextStyle(color: Colors.white),
              keyboardType: textInputType,
              obscureText: obscureText,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                     borderSide:BorderSide.none
                ),

                hintText: hintText,
                // suffixIcon: IconButton(
                //   icon: Icon(Icons.add),
                //   onPressed: onPressIcon,
                // ),
                // AppLocalizations.of(context).translate(hintText),
                hintStyle: TextStyle(color: HexColor('C4C4C4'), fontSize: 13,

                ),

                fillColor: Colors.white10.withOpacity(0.8),
                filled: false,

              ),
            ),
          )

      )
    ],
  );
}

void showShare(context) {


  showModalBottomSheet(
      backgroundColor: Colors.white,

      useRootNavigator: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0)),
      ),
      context: context,
      builder: (context) {
        return StatefulBuilder(




          builder: (context, setState) {


            return Form(
              // key: _formKey,
              child: Container(

                  height: MediaQuery.of(context).size.height /5.5,
                  margin:
                  EdgeInsets.only(top: 16, bottom: 16, right: 10, left: 10),
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
                      Padding(padding: EdgeInsetsDirectional.only(start: 7,end: 7),
                          child:

                          Column(

                            children: [
                              Container(
                                padding:  EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 10),
                            child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // type4 =type ;
                                      },
                                      child:Container(
                                          child: Text('$type4',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),

                                    InkWell(
                                      onTap: () {
                                        // type3 =type ;

                                      },
                                      child:Container(
                                          child: Text('$type3',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),
                                    InkWell(
                                      onTap: () {
                                        // type2 =type ;

                                      },
                                      child:Container(
                                          child: Text('$type2',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),
                                    InkWell(
                                      onTap: () {
                                        // type =type1 ;
                                      },
                                      child:Container(
                                          child: Text('$type1',style: TextStyle( color: Color(0xff79A316),fontSize: 15,fontFamily: 'fonts',fontWeight: FontWeight.bold),)

                                      ),

                                    ),

                                    SizedBox()
                                  ],),

                              ),

                              SizedBox(height: 0,),

                              Container(
                                padding: EdgeInsets.all(20),

                                child: baseClick2(
                                  onTap: () {

                                  },
                                    title: 'اختيار',


                                    // AppLocalizations.of(context).translate("Get Started"),
                                    color: Color(0xff79A316),
                                    colorTitle: Colors.white,
                                    height: 40.0,
                                    radius: 15.0,
                                    sizeTitle: 17.0,
                                    FontWeight: FontWeight.bold
                                ),
                              ),



                            ],)

                      ),
                    ],
                  )
              ),
            );
          },
        );
      });
}
