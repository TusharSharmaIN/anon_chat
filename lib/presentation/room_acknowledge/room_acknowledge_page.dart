import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:rumour/bloc/bloc/room_bloc.dart';
import 'package:rumour/presentation/core/custom/custom_app_bar.dart';
import 'package:rumour/presentation/router/route.dart';
import 'package:rumour/presentation/theme/base_colors.dart';
import 'package:rumour/presentation/theme/base_text_styles.dart';

class RoomAcknowledgePage extends StatelessWidget {
  const RoomAcknowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        // Called for system back + navigator pops
        context.read<RoomBloc>().add(const RoomEvent.init());

        // If it didn't actually pop, force a pop
        if (!didPop) {
          context.pop();
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: BaseColors.backgroundBlack,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<RoomBloc, RoomState>(
                  buildWhen: (previous, current) =>
                      previous.currentIdentity != current.currentIdentity,
                  builder: (context, state) {
                    final roomId = state.roomId;
                    return CustomAppBar(title: 'Room #$roomId');
                  },
                ),
                const Spacer(),
                _IdentityCard(),
                const SizedBox(height: 48),
                _ContinueCTA(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IdentityCard extends StatelessWidget {
  const _IdentityCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
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
          const SizedBox(height: 12),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [BaseColors.primaryYellow, BaseColors.primaryGreen],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: BlocBuilder<RoomBloc, RoomState>(
              buildWhen: (previous, current) =>
                  previous.currentIdentity != current.currentIdentity,
              builder: (context, state) {
                final userName = state.currentIdentity.displayName;
                return Text(
                  userName,
                  style: BaseTextStyles.poppinsHugeHeavyBold.copyWith(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
          const SizedBox(height: 16),
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

class _ContinueCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          context.read<RoomBloc>().add(const RoomEvent.watchMessagesStarted());
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
