import 'package:flutter/material.dart';
import 'package:king/constant/string_constant.dart';
import 'package:king/ui/home/presentation/screen/home_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      //system
      Strings.homeScreen: (BuildContext context) => const HomeScreen(),
    };
  }
}
