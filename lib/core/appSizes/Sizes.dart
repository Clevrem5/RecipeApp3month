import 'package:flutter/material.dart';

class AppSizes{
  static late  double wratio;
  static late  double hRatio;
  static void init(BuildContext context){
    var size= MediaQuery.sizeOf(context);
    wratio=size.width/430;
    hRatio=size.height/932;
  }
}