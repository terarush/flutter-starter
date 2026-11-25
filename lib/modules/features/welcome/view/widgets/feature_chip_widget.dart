import 'package:material_ui/material_ui.dart';
import 'package:flutter_starter/constant/common/colors.dart';

class FeatureChipWidget extends StatelessWidget {
  final String label;

  const FeatureChipWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSecondary : AppColors.secondary,
        border: Border.all(
          color: isDark ? AppColors.darkBorder : AppColors.border,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: isDark ? AppColors.darkForeground : AppColors.secondaryForeground,
        ),
      ),
    );
  }
}
