import 'package:anon_chat/domain/room/entities/chat_message.dart';
import 'package:anon_chat/presentation/core/custom/custom_app_bar.dart';
import 'package:anon_chat/presentation/core/custom/custom_icon_button.dart';
import 'package:anon_chat/presentation/core/utils/assets.dart';
import 'package:anon_chat/presentation/theme/base_colors.dart';
import 'package:anon_chat/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'widgets/chat_list.dart';
part 'widgets/chat_composer.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: BaseColors.backgroundBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: const [
              CustomAppBar(title: 'Room #5812'),
              SizedBox(height: 16),
              Expanded(child: _ChatList()),
              _ChatComposer(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
