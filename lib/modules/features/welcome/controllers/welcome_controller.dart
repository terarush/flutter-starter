import 'package:material_ui/material_ui.dart';

class WelcomeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  bool isDarkMode(BuildContext context) {
    if (_themeMode == ThemeMode.system) {
      return MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  void toggleTheme(BuildContext context) {
    final currentDark = isDarkMode(context);
    _themeMode = currentDark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
