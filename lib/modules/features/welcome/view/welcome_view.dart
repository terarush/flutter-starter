import 'package:material_ui/material_ui.dart';
import 'package:flutter_starter/constant/common/colors.dart';
import 'package:flutter_starter/constant/common/text_styles.dart';
import 'package:flutter_starter/constant/core/assets_const.dart';
import 'package:flutter_starter/shared/widgets/common_button.dart';
import 'package:flutter_starter/shared/widgets/screen_widget.dart';
import '../controllers/welcome_controller.dart';
import 'widgets/feature_chip_widget.dart';

class WelcomeView extends StatelessWidget {
  final WelcomeController controller;

  const WelcomeView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = controller.isDarkMode(context);

    return ScreenWidget(
      child: Stack(
        children: [
          // Top controls
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => controller.toggleTheme(context),
                  borderRadius: BorderRadius.circular(999),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isDark ? AppColors.darkBorder : AppColors.border,
                      ),
                      color: isDark ? AppColors.darkCard : Colors.white,
                    ),
                    child: Icon(
                      isDark
                          ? Icons.wb_sunny_outlined
                          : Icons.nightlight_round_outlined,
                      size: 18,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.darkSecondary : AppColors.secondary,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.success,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'v1.0.0',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: isDark
                              ? AppColors.darkMutedForeground
                              : AppColors.mutedForeground,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Main Center content
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // App Logo
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.08),
                            blurRadius: 16,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          AssetConst.logo,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: theme.colorScheme.primary,
                              child: const Icon(
                                Icons.flutter_dash,
                                color: Colors.white,
                                size: 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),

                    // Badge
                    Text(
                      'FLUTTER STARTER',
                      style: CustomTypography.badge.copyWith(
                        color: isDark
                            ? AppColors.darkMutedForeground
                            : AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Title
                    Text(
                      'TeraRush Flutter Starter',
                      textAlign: TextAlign.center,
                      style: CustomTypography.titleLarge.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Description
                    Text(
                      'Production-ready foundation for your next cross-platform app. Built with Flutter, Material 3, Clean Tokens, and more.',
                      textAlign: TextAlign.center,
                      style: CustomTypography.bodyMedium.copyWith(
                        color: isDark
                            ? AppColors.darkMutedForeground
                            : AppColors.mutedForeground,
                      ),
                    ),
                    const SizedBox(height: 28),

                    // Common Action Button
                    CommonButton(
                      text: 'Get Started',
                      trailingIcon: const Icon(Icons.arrow_forward_rounded, size: 18),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Ready to build! Edit lib/main.dart or add features in lib/modules/features/.',
                            ),
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 36),

                    // Feature Chips
                    const Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      alignment: WrapAlignment.center,
                      children: [
                        FeatureChipWidget(label: 'Flutter 3.x'),
                        FeatureChipWidget(label: 'Material 3'),
                        FeatureChipWidget(label: 'Modular Architecture'),
                        FeatureChipWidget(label: 'Clean Tokens'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
