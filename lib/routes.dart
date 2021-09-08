
import 'package:flutter/cupertino.dart';
import 'package:mobile_dekho/Module/AddMobileModule/Screens/AddMobile.dart';
import 'package:mobile_dekho/Module/HomeModule/Views/HomePage.dart';

final Map<String , WidgetBuilder> route = {
  HomePage.routeName: (context) => HomePage(),
  AddMobiles.routeName: (context) => AddMobiles(),
};