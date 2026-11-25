import 'package:material_ui/material_ui.dart';

abstract final class CustomTypography {
  static const TextStyle badge = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    letterSpacing: 2.2,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w900,
    letterSpacing: -0.8,
    height: 1.2,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    height: 1.55,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );
}
