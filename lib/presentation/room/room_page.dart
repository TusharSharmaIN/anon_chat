import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rumour/bloc/bloc/room_bloc.dart';
import 'package:rumour/domain/core/value/value_objects.dart';
import 'package:rumour/domain/room/entities/chat_message.dart';
import 'package:rumour/presentation/core/custom/custom_app_bar.dart';
import 'package:rumour/presentation/core/custom/custom_icon_button.dart';
import 'package:rumour/presentation/core/utils/assets.dart';
import 'package:rumour/presentation/router/route.dart';
import 'package:rumour/presentation/theme/base_colors.dart';
import 'package:rumour/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'widgets/chat_list.dart';
part 'widgets/chat_composer.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        // Called for system back + navigator pops
        context.read<RoomBloc>().add(const RoomEvent.init());
        context.go(AppRoutes.joinRoomPage);
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: BaseColors.backgroundBlack,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                BlocBuilder<RoomBloc, RoomState>(
                  buildWhen: (previous, current) =>
                      previous.roomId != current.roomId,
                  builder: (context, state) {
                    final id = state.roomId.isEmpty ? '----' : state.roomId;
                    return CustomAppBar(title: 'Room #$id');
                  },
                ),
                const SizedBox(height: 16),
                const Expanded(child: _ChatList()),
                const _ChatComposer(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
