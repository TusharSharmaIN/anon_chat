part of '../room_page.dart';

class _ChatList extends StatelessWidget {
  const _ChatList();

  String _capText(String txt, [int cap = 260]) {
    if (txt.length <= cap) return txt;
    return '${txt.substring(0, cap)}…';
  }

  String _dateLabel(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final thatDay = DateTime(date.year, date.month, date.day);
    final diff = today.difference(thatDay).inDays;
    if (diff == 0) return 'Today';
    if (diff == 1) return 'Yesterday';
    return DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, RoomState>(
      buildWhen: (previous, current) =>
          previous.messages != current.messages ||
          previous.currentIdentity.uid != current.currentIdentity.uid,
      builder: (context, state) {
        final messages = state.messages;
        final myUid = state.currentIdentity.uid.getValue();

        if (messages.isEmpty) {
          return ListView(
            padding: const EdgeInsets.only(bottom: 8),
            children: const [SizedBox(height: 8)],
          );
        }

        final grouped = <String, List<ChatMessage>>{};
        for (final m in messages) {
          final label = _dateLabel(m.createdAt.dateTime);
          grouped.putIfAbsent(label, () => []).add(m);
        }

        final dayLabels = grouped.keys.toList()
          ..sort((a, b) {
            final da = grouped[a]!.first.createdAt.dateTime;
            final db = grouped[b]!.first.createdAt.dateTime;
            return da.compareTo(db);
          });

        return ListView(
          padding: const EdgeInsets.only(bottom: 8),
          children: [
            const SizedBox(height: 8),
            for (final label in dayLabels) ...[
              _DateChip(text: label),
              const SizedBox(height: 16),
              for (final m in grouped[label]!) ...[
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
