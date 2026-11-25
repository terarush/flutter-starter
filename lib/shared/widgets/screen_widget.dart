import 'package:material_ui/material_ui.dart';

class ScreenWidget extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final bool safeArea;

  const ScreenWidget({
    super.key,
    required this.child,
    this.appBar,
    this.floatingActionButton,
    this.safeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: floatingActionButton,
      body: safeArea ? SafeArea(child: child) : child,
    );
  }
}
