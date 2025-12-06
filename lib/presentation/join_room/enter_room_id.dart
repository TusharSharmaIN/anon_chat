import 'package:rumour/bloc/bloc/room_bloc.dart';
import 'package:rumour/presentation/theme/base_colors.dart';
import 'package:rumour/presentation/theme/base_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class EnterRoomId extends StatelessWidget {
  const EnterRoomId({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final defaultPinTheme = PinTheme(
      width: width / 12,
      height: 56,
      padding: const EdgeInsets.all(4),
      textStyle: BaseTextStyles.poppinsHugeBold.copyWith(
        fontSize: 30,
        color: BaseColors.santasGrey,
        fontWeight: FontWeight.w600,
      ),
      decoration: const BoxDecoration(),
    );

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width / 12,
        height: 4,
        decoration: BoxDecoration(
          color: BaseColors.textGrey,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    final preFilledWidget = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width / 12,
        height: 3,
        decoration: BoxDecoration(
          color: BaseColors.santasGrey,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      decoration: BoxDecoration(
        color: BaseColors.backgroundGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Pinput(
        length: 6,
        pinAnimationType: PinAnimationType.slide,
        showCursor: true,
        defaultPinTheme: defaultPinTheme,
        cursor: cursor,
        isCursorAnimationEnabled: false,
        preFilledWidget: preFilledWidget,
        onChanged: (value) {
          context.read<RoomBloc>().add(
            RoomEvent.onRoomIdEntered(
              field: RoomBlocFieldType.roomId,
              value: value,
            ),
          );
        },
      ),
    );
  }
}
