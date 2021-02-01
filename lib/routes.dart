import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './views/account.page.dart';
import './views/accounts.page.dart';

class AppRoutes {
  ///app start up page
  /// App start up (loading) page
  static const String clients = '/';

  /// App start up (loading) page
  static const String client = '/client';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case clients:
        return MaterialPageRoute(
          builder: (BuildContext context) => ClientsPage(),
          settings: settings,
        );
      case client:
        return MaterialPageRoute(
          builder: (BuildContext context) => ClientPages(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => ClientsPage(),
          settings: settings,
        );
    }
  }
}
