part of '../room_page.dart';

class _ChatComposer extends StatelessWidget {
  const _ChatComposer();

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
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
            color: BaseColors.primaryGreen,
            shape: BoxShape.circle,
          ),
          child: CustomIconButton(
            onPressed: null,
            icon: SvgPicture.asset(Assets.sendArrow),
          ),
        ),
      ],
    );
  }
}
