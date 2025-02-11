import 'package:flutter/material.dart';
import 'package:king/routes/routes_constant.dart';
import 'package:king/ui/home/presentation/screen/home_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      //system
      RoutesConstant.homeScreen: (BuildContext context) =>
          const HomeProvider(),
    };
  }
}
