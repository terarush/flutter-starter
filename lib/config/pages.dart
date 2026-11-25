import 'package:material_ui/material_ui.dart';
import 'package:flutter_starter/config/routes.dart';
import 'package:flutter_starter/modules/features/welcome/controllers/welcome_controller.dart';
import 'package:flutter_starter/modules/features/welcome/view/welcome_view.dart';

abstract final class AppPages {
  static Route<dynamic> onGenerateRoute(
    RouteSettings settings,
    WelcomeController welcomeController,
  ) {
    switch (settings.name) {
      case RouteName.root:
      case RouteName.welcome:
        return MaterialPageRoute(
          builder: (_) => WelcomeView(controller: welcomeController),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => WelcomeView(controller: welcomeController),
          settings: settings,
        );
    }
  }
}
