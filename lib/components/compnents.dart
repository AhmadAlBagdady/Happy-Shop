import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../login/login_screen.dart';

Widget text({
  required String text,
  double? fontSize,
  Color? color,
  TextDirection textdirection=TextDirection.ltr,
  FontWeight? fontWeight,
})=> Text(
      text,
      textDirection: textdirection,
      style: TextStyle(
fontSize: fontSize,
fontWeight: fontWeight,
color: color,
      ),
    );
Widget textformfield({
  Function()?onTap,
  Function()?onPressed,
  TextEditingController? controller,
  TextInputType textInputType=TextInputType.text,
  String? Function(String?)?validate,
   String? labeltext,
   Widget? prefixicon,
  IconData? suffixicon,
  InputBorder? border,
  bool obscuretext=false,
  Color? color,
  Color? fillcolor,
  Color? textcolor,
  int? maxlength,
  double? size,
  bool isClickable=true,
})=>TextFormField(
  enabled: isClickable,
  onTap: onTap,
  maxLength: maxlength,
  style: TextStyle(color: textcolor,fontSize: size),
  cursorColor: color,
  controller: controller,
  keyboardType:textInputType,
  validator: validate,
  obscureText:obscuretext,
  decoration:  InputDecoration(
    labelText: labeltext,
    fillColor: fillcolor,
    prefixIcon: prefixicon,
    suffixIcon: IconButton(onPressed: onPressed,icon:Icon(suffixicon)),
    border:border,
  ),
);
Widget materialbutton({
  InputBorder? border,
  required Function()?onPressed,
  required String texto,
  double? fontSize,
  Color? color,
  Color? colorforbutton,
  double? minwidth,
})=>MaterialButton(
  onPressed:onPressed,
  child:text(text:texto ,fontSize: fontSize,color:color),
  color: colorforbutton,
  elevation: 0,
  minWidth: minwidth,
);
Widget textbutton({
  required Function()?onPressed,
  required String texto,
  double? fontSize,
  Color? color,

})=>TextButton(
  onPressed: onPressed,
  child:text(text:texto ,fontSize: fontSize,color:color),
);