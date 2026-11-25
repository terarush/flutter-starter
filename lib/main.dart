import 'package:material_ui/material_ui.dart';
import 'config/pages.dart';
import 'config/routes.dart';
import 'config/themes.dart';
import 'modules/features/welcome/controllers/welcome_controller.dart';

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
  final WelcomeController _welcomeController = WelcomeController();

  @override
  void initState() {
    super.initState();
    _welcomeController.addListener(_onControllerUpdate);
  }

  @override
  void dispose() {
    _welcomeController.removeListener(_onControllerUpdate);
    _welcomeController.dispose();
    super.dispose();
  }

  void _onControllerUpdate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeraRush Flutter Starter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _welcomeController.themeMode,
      initialRoute: RouteName.root,
      onGenerateRoute: (settings) =>
          AppPages.onGenerateRoute(settings, _welcomeController),
    );
  }
}
