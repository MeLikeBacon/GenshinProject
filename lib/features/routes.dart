import 'package:flutter/material.dart';

import 'home/home_view.dart';

class Routes {
  static const initial = '/';
  static const home_view = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    home_view: (BuildContext context) => HomeView(),
  };

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
