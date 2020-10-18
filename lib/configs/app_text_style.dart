
import 'package:flutter/cupertino.dart';
import 'package:kaishokunmobile/configs/app_color.dart';

class AppTextStyle {
  static TextStyle strong18Bold = TextStyle(color: AppColor.onSurfaceStrong,fontSize: 18,fontWeight: FontWeight.bold);
  static TextStyle surface17Bold = TextStyle(color: AppColor.surface,fontSize: 17,fontWeight: FontWeight.bold);
  static TextStyle orange16Normal = TextStyle(color: AppColor.orange,fontSize: 16,fontWeight: FontWeight.normal);
  static TextStyle silver12Normal = TextStyle(color: AppColor.silver,fontSize: 12,fontWeight: FontWeight.normal);
  static TextStyle onSurface16Normal = TextStyle(color: AppColor.onSurface,fontWeight: FontWeight.normal,fontSize: 16);
  static TextStyle onSurface21Normal = TextStyle(color: AppColor.onSurface,fontWeight: FontWeight.normal,fontSize: 21);
  static TextStyle onSurface14Normal = TextStyle(color: AppColor.onSurface,fontWeight: FontWeight.normal,fontSize: 14);
  
  static TextStyle bottomNav = TextStyle(fontSize: 12,fontWeight: FontWeight.normal);
  static TextStyle menuText = TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: AppColor.onSurface);
}