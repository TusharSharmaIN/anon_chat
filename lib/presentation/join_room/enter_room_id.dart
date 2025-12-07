part of 'join_room_page.dart';

class _EnterRoomId extends StatefulWidget {
  const _EnterRoomId();

  @override
  State<_EnterRoomId> createState() => _EnterRoomIdState();
}

class _EnterRoomIdState extends State<_EnterRoomId> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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

    return BlocListener<RoomBloc, RoomState>(
      listenWhen: (prev, curr) =>
          prev.enteredRoomId != curr.enteredRoomId &&
          curr.enteredRoomId.isEmpty,
      listener: (_, state) {
        _controller.clear();
      },
      child: Container(
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
          controller: _controller,
          onChanged: (value) {
            context.read<RoomBloc>().add(
              RoomEvent.onRoomIdEntered(
                field: RoomBlocFieldType.roomId,
                value: value,
              ),
            );
          },
        ),
      ),
    );
  }
}
