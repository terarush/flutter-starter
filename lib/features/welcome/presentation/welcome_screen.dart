import 'package:material_ui/material_ui.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  const WelcomeScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Top Controls (Theme Toggle)
            Positioned(
              top: 16,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Theme Toggle Button
                  InkWell(
                    onTap: onToggleTheme,
                    borderRadius: BorderRadius.circular(999),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isDarkMode
                              ? const Color(0xFF262A33)
                              : const Color(0xFFDCDEE1),
                        ),
                        color: isDarkMode
                            ? const Color(0xFF12161D)
                            : Colors.white,
                      ),
                      child: Icon(
                        isDarkMode
                            ? Icons.wb_sunny_outlined
                            : Icons.nightlight_round_outlined,
                        size: 18,
                        color: colorScheme.onSurface,
                      ),
                    ),
                  ),

                  // Platform Badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? const Color(0xFF1F2227)
                          : const Color(0xFFEBEFF5),
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
                            color: Color(0xFF10B981),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'v1.0.0',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: isDarkMode
                                ? const Color(0xFF979FAB)
                                : const Color(0xFF606369),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Centered Welcome Content
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 420),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Logo
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
                            'assets/images/logo.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: colorScheme.primary,
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
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.2,
                          color: isDarkMode
                              ? const Color(0xFF979FAB)
                              : const Color(0xFF606369),
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Title
                      Text(
                        'TeraRush Flutter Starter',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.8,
                          color: colorScheme.onSurface,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 14),

                      // Description
                      Text(
                        'Production-ready foundation for your next cross-platform app. Built with Flutter, Material 3, Clean Tokens, and more.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.55,
                          color: isDarkMode
                              ? const Color(0xFF979FAB)
                              : const Color(0xFF606369),
                        ),
                      ),
                      const SizedBox(height: 28),

                      // Action Button
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                  'Ready to build! Edit lib/main.dart to get started.',
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Get Started'),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward_rounded, size: 18),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 36),

                      // Feature Tags
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        alignment: WrapAlignment.center,
                        children: const [
                          _FeatureChip(label: 'Flutter 3.x'),
                          _FeatureChip(label: 'Material 3'),
                          _FeatureChip(label: 'Light & Dark'),
                          _FeatureChip(label: 'Cross-Platform'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final String label;

  const _FeatureChip({required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1F2227) : const Color(0xFFEBEFF5),
        border: Border.all(
          color: isDark ? const Color(0xFF262A33) : const Color(0xFFDCDEE1),
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: isDark ? const Color(0xFFF8FAFC) : const Color(0xFF1E242F),
        ),
      ),
    );
  }
}
