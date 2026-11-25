import 'package:material_ui/material_ui.dart';
import 'core/theme/app_theme.dart';
import 'features/welcome/presentation/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FlutterStarterApp());
}

class FlutterStarterApp extends StatefulWidget {
  const FlutterStarterApp({super.key});

  @override
  State<FlutterStarterApp> createState() => _FlutterStarterAppState();
}

class _FlutterStarterAppState extends State<FlutterStarterApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      final isDark = _themeMode == ThemeMode.dark ||
          (_themeMode == ThemeMode.system &&
              WidgetsBinding.instance.platformDispatcher.platformBrightness ==
                  Brightness.dark);

      _themeMode = isDark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeraRush Flutter Starter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: Builder(
        builder: (context) {
          final isDark = Theme.of(context).brightness == Brightness.dark;
          return WelcomeScreen(
            onToggleTheme: _toggleTheme,
            isDarkMode: isDark,
          );
        },
      ),
    );
  }
}
