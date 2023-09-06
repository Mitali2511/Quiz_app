import 'package:flutter/material.dart';

class Utility  {
  static Widget customSizedBox(int i, {double height=0,double width=0}){
    return SizedBox(
      height:height ,
    width: width );

  }


  static  InputDecoration decoration({double borderRadius=0}){
    return InputDecoration( 
      border:
     OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius)));
  }
}