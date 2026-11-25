import 'package:material_ui/material_ui.dart';

/// App color tokens mapped directly from `react-starter` theme tokens
/// (Tailwind + OKLCH color definitions).
abstract final class AppColors {
  // Light Palette (based on react-starter :root)
  static const Color lightPrimary = Color(0xFF0873FF);
  static const Color lightPrimaryForeground = Color(0xFFF9FAFB);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFFAFAFA);
  static const Color lightCard = Color(0xFFFFFFFF);
  static const Color lightForeground = Color(0xFF070B14);
  static const Color lightSecondary = Color(0xFFEBEFF5);
  static const Color lightSecondaryForeground = Color(0xFF1E242F);
  static const Color lightMuted = Color(0xFFEBEFF5);
  static const Color lightMutedForeground = Color(0xFF606369);
  static const Color lightAccent = Color(0xFFEBEFF5);
  static const Color lightAccentForeground = Color(0xFF1E242F);
  static const Color lightBorder = Color(0xFFDCDEE1);
  static const Color lightInput = Color(0xFFDCDEE1);

  // Dark Palette (based on react-starter .dark)
  static const Color darkPrimary = Color(0xFF0766EE);
  static const Color darkPrimaryForeground = Color(0xFFF9FAFB);
  static const Color darkBackground = Color(0xFF070B14);
  static const Color darkSurface = Color(0xFF0D121B);
  static const Color darkCard = Color(0xFF12161D);
  static const Color darkForeground = Color(0xFFF8FAFC);
  static const Color darkSecondary = Color(0xFF1F2227);
  static const Color darkSecondaryForeground = Color(0xFFF8FAFC);
  static const Color darkMuted = Color(0xFF1F2227);
  static const Color darkMutedForeground = Color(0xFF979FAB);
  static const Color darkAccent = Color(0xFF1F2227);
  static const Color darkAccentForeground = Color(0xFFF8FAFC);
  static const Color darkBorder = Color(0xFF262A33);
  static const Color darkInput = Color(0xFF2E333E);

  // Common Status Colors
  static const Color destructive = Color(0xFFF20024);
  static const Color destructiveForeground = Color(0xFFFFFFFF);
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
}
