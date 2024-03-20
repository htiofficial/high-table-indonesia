import 'package:flutter/material.dart';
import 'package:hti_indonesia/src/features/home/presentation/pages/home.dart';
import 'package:hti_indonesia/src/features/mobile/presentation/pages/mobile_page.dart';
import 'package:hti_indonesia/src/features/redirect/pages/redirect.dart';
import 'package:hti_indonesia/src/features/website/presentation/pages/website.dart';
import 'package:hti_indonesia/src/routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeMain:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      //     break;
        case routeWebsite:
          return MaterialPageRoute(builder: (_) => const WebsitePage());
      case routeMobile:
        return MaterialPageRoute(builder: (_) => const MobilePage());
      default:
        return MaterialPageRoute(builder: (_) => const RedirectPage());
    }
  }
}
