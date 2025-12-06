import 'package:rumour/presentation/core/custom/custom_icon_button.dart';
import 'package:rumour/presentation/theme/base_colors.dart';
import 'package:rumour/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.padding,
    this.trailing,
    this.iconColor,
  });
  final String title;
  final EdgeInsets? padding;
  final Widget? trailing;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(alignment: Alignment.centerLeft, child: AppBarBackCTA()),
        Center(
          child: Text(
            title,
            style: BaseTextStyles.poppinsHugeBold.copyWith(
              color: BaseColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarBackCTA extends StatelessWidget {
  const AppBarBackCTA({
    super.key,
    this.onPressed,
    this.padding = EdgeInsets.zero,
    this.iconColor = BaseColors.black,
  });
  final EdgeInsets padding;
  final VoidCallback? onPressed;
  final Color? iconColor;

  void _onPressed(BuildContext context) {
    if (onPressed != null) {
      onPressed!();
    } else {
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: CustomIconButton(
        onPressed: () => _onPressed(context),
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 32,
          weight: 16,
          color: BaseColors.white,
        ),
      ),
    );
  }
}
