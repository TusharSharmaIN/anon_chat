import 'package:anon_chat/bloc/bloc/room_bloc.dart';
import 'package:anon_chat/presentation/core/utils/assets.dart';
import 'package:anon_chat/presentation/join_room/enter_room_id.dart';
import 'package:anon_chat/presentation/router/route.dart';
import 'package:anon_chat/presentation/theme/base_colors.dart';
import 'package:anon_chat/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class JoinRoomPage extends StatelessWidget {
  const JoinRoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RoomBloc, RoomState>(
      listenWhen: (previous, current) =>
          previous.roomJoined != current.roomJoined,
      listener: (context, state) {
        if (state.roomJoined) {
          context.push(AppRoutes.roomAcknowledge);
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Align(alignment: Alignment.topCenter, child: const KeyIcon()),
              Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Join A Room',
                      style: BaseTextStyles.poppinsHugeBold.copyWith(
                        color: BaseColors.primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Enter the code to join the anon chat\nroom',
                      style: BaseTextStyles.poppinsLargeRegularBold.copyWith(
                        color: BaseColors.primaryTextGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 48),
                    EnterRoomId(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KeyIcon extends StatelessWidget {
  const KeyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: BaseColors.backgroundGrey,
      ),
      child: SvgPicture.asset(Assets.keyGreen, height: 24, width: 24),
    );
  }
}
