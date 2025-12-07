import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rumour/presentation/theme/base_colors.dart';
import 'package:rumour/presentation/theme/base_text_styles.dart';

class BlurryLoaderOverlay extends StatelessWidget {
  const BlurryLoaderOverlay({super.key, this.message = 'Loading...'});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: BaseColors.black.withValues(alpha: 0.55),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
              decoration: BoxDecoration(
                color: BaseColors.ebonyBlack.withValues(alpha: 0.85),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(
                    color: BaseColors.primaryGreen,
                    strokeWidth: 3,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    message,
                    style: BaseTextStyles.poppinsLargeSemiBold.copyWith(
                      color: BaseColors.white.withValues(alpha: 0.9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
