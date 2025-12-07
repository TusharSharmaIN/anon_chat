part of '../room_page.dart';

class _ChatList extends StatefulWidget {
  const _ChatList();

  @override
  State<_ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<_ChatList> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<RoomBloc>().add(const RoomEvent.watchMessagesStarted());
    _controller.addListener(() {
      if (_controller.position.pixels <=
          _controller.position.minScrollExtent + 60) {
        context.read<RoomBloc>().add(const RoomEvent.loadMoreMessages());
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _isNearBottom {
    if (!_controller.hasClients) return true;

    final max = _controller.position.maxScrollExtent;
    final offset = _controller.position.pixels;
    return (max - offset) <= 80;
  }

  void _scrollToBottom() {
    if (!_controller.hasClients) return;
    if (!_isNearBottom) return;

    Future.delayed(const Duration(milliseconds: 30), () {
      if (_controller.hasClients) {
        _controller.animateTo(
          _controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _capText(String txt, [int cap = 260]) {
    if (txt.length <= cap) return txt;
    return '${txt.substring(0, cap)}…';
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RoomBloc, RoomState>(
      listenWhen: (p, c) => p.messages != c.messages,
      listener: (_, __) => _scrollToBottom(),
      child: BlocBuilder<RoomBloc, RoomState>(
        buildWhen: (previous, current) =>
            previous.messages != current.messages ||
            previous.currentIdentity.uid != current.currentIdentity.uid,
        builder: (context, state) {
          final messages = state.messages;
          final myUid = state.currentIdentity.uid.getValue();

          if (messages.isEmpty) {
            return ListView(
              controller: _controller,
              padding: const EdgeInsets.only(bottom: 8),
              children: const [SizedBox(height: 8)],
            );
          }

          final grouped = <DateTime, List<ChatMessage>>{};
          for (final m in messages) {
            final key = m.createdAt.dayKey;
            grouped.putIfAbsent(key, () => []).add(m);
          }

          final dayKeys = grouped.keys.toList()..sort((a, b) => a.compareTo(b));

          return ListView(
            controller: _controller,
            padding: const EdgeInsets.only(bottom: 8),
            children: [
              const SizedBox(height: 8),
              for (final dayKey in dayKeys) ...[
                _DateChip(
                  text: DateTimeValue(dayKey.toIso8601String()).labeledDate,
                ),
                const SizedBox(height: 16),
                for (final m in grouped[dayKey]!) ...[
                  _MessageTile(
                    handle: m.senderName.getValue(),
                    text: _capText(m.text.getValue()),
                    time: m.createdAt.formattedTime,
                    isMe: m.isSentBy(myUid),
                  ),
                  const SizedBox(height: 12),
                ],
              ],
            ],
          );
        },
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  final String text;
  const _DateChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: BaseColors.ebonyClay,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: BaseTextStyles.poppinsSmallSemiBold.copyWith(
            color: BaseColors.chateauGrey,
          ),
        ),
      ),
    );
  }
}

class _MessageTile extends StatelessWidget {
  final String handle;
  final String text;
  final String time;
  final bool isMe;

  const _MessageTile({
    required this.handle,
    required this.text,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    final bubbleColor = isMe ? BaseColors.primaryGreen : BaseColors.ebonyBlack;
    final textColor = isMe ? BaseColors.ebonyClay : BaseColors.white;
    final align = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final alignRow = isMe ? MainAxisAlignment.end : MainAxisAlignment.start;

    return Column(
      crossAxisAlignment: align,
      children: [
        Padding(
          padding: EdgeInsets.only(left: isMe ? 48 : 0, right: isMe ? 0 : 48),
          child: Text(
            isMe ? 'You' : '@$handle',
            style: BaseTextStyles.poppinsMediumSemiBold.copyWith(
              color: BaseColors.white,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: alignRow,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 260),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: bubbleColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isMe ? 16 : 2),
                    topRight: Radius.circular(isMe ? 2 : 16),
                    bottomLeft: const Radius.circular(16),
                    bottomRight: const Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: BaseTextStyles.poppinsLargeSemiBold.copyWith(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        time,
                        style: BaseTextStyles.poppinsSmallRegular.copyWith(
                          color: textColor.withValues(alpha: 0.75),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
