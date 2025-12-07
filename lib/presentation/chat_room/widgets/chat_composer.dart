part of '../chat_room_page.dart';

class _ChatComposer extends StatefulWidget {
  const _ChatComposer();

  @override
  State<_ChatComposer> createState() => _ChatComposerState();
}

class _ChatComposerState extends State<_ChatComposer> {
  final _controller = TextEditingController();
  bool _canSend = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final hasText = _controller.text.trim().isNotEmpty;
      if (hasText != _canSend) {
        setState(() => _canSend = hasText);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSend() {
    if (!_canSend) return;
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    
    context.read<RoomBloc>().add(RoomEvent.sendMessagePressed(text: text));
    
    _controller.clear();
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 150),
        alignment: 1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: BaseColors.ebonyBlack.withValues(alpha: 0.8),
              borderRadius: BorderRadius.circular(28),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: _controller,
              style: BaseTextStyles.poppinsMediumRegular.copyWith(
                color: BaseColors.primaryTextGrey,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type a message',
                hintStyle: BaseTextStyles.poppinsMediumRegular.copyWith(
                  color: BaseColors.paleSky,
                ),
              ),
              onSubmitted: (_) => _onSend(),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Opacity(
          opacity: _canSend ? 1.0 : 0.35,
          child: Container(
            width: 52,
            height: 52,
            decoration: const BoxDecoration(
              color: BaseColors.primaryGreen,
              shape: BoxShape.circle,
            ),
            child: CustomIconButton(
              onPressed: _canSend ? _onSend : null,
              icon: SvgPicture.asset(Assets.sendArrow),
            ),
          ),
        ),
      ],
    );
  }
}
