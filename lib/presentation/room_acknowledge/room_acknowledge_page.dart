import 'package:anon_chat/presentation/core/custom/custom_app_bar.dart';
import 'package:anon_chat/presentation/router/route.dart';
import 'package:anon_chat/presentation/theme/base_colors.dart';
import 'package:anon_chat/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoomAcknowledgePage extends StatelessWidget {
  const RoomAcknowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColors.backgroundBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomAppBar(title: 'Room #5812'),
              Spacer(),
              IdDisplay(),
              SizedBox(height: 48),
              AcknowledgeContinueCTA(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class IdDisplay extends StatelessWidget {
  const IdDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      decoration: BoxDecoration(
        color: BaseColors.ebonyBlack.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            'For this room, you are',
            style: BaseTextStyles.poppinsMediumRegular.copyWith(
              color: BaseColors.chateauGrey,
            ),
          ),
          Text(
            'Brave Badger',
            style: BaseTextStyles.poppinsHugeHeavyBold.copyWith(
              fontSize: 60,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: [BaseColors.primaryYellow, BaseColors.primaryGreen],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(Rect.fromLTWH(0, 0, 600, 200)),
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'This is your anonymous identifier, visible only to others in this room.',
            style: BaseTextStyles.poppinsMediumRegular.copyWith(
              color: BaseColors.chateauGrey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AcknowledgeContinueCTA extends StatelessWidget {
  const AcknowledgeContinueCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.replace(AppRoutes.room);
        },
        child: Text(
          'Acknowledge and continue',
          style: BaseTextStyles.poppinsExtraLargeBold.copyWith(
            color: BaseColors.black,
          ),
        ),
      ),
    );
  }
}
