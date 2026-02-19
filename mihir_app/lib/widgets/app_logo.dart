import 'package:flutter/material.dart';

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
    return Image.asset(
      'assets/logos/mihir_logo_transparent.png',
      width: size,
      height: size,
      errorBuilder: (context, error, stackTrace) {
        return Icon(
          Icons.menu_book,
          size: size,
        );
      },
    );
  }
}
