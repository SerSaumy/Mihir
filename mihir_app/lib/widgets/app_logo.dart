import 'package:flutter/material.dart';
import 'dart:io';

class AppLogo extends StatelessWidget {
  final double? size;
  final bool useDark;

  const AppLogo({
    super.key,
    this.size,
    this.useDark = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = useDark || Theme.of(context).brightness == Brightness.dark;
    
    String logoPath;
    if (isDark) {
      logoPath = 'assets/logos/mihir_logo_white.jpg';
    } else {
      logoPath = 'assets/logos/mihir_logo_black.jpg';
    }

    return Image.asset(
      logoPath,
      width: size,
      height: size,
      errorBuilder: (context, error, stackTrace) {
        // Fallback to transparent logo if available
        return Image.asset(
          'assets/logos/mihir_logo_transparent.png',
          width: size,
          height: size,
          errorBuilder: (context, error, stackTrace) {
            // Final fallback - just show icon
            return Icon(
              Icons.menu_book,
              size: size,
            );
          },
        );
      },
    );
  }
}
