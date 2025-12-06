import 'package:anon_chat/presentation/theme/base_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BaseTextStyles {
  static TextStyle poppinsTinyBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w700,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsExtraSmallBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w700,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsSmallRegular = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsSmallSemiBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsSmallBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  // static TextStyle poppinsSemiMediumSemiBold = GoogleFonts.poppins(
  //   textStyle: const TextStyle(
  //     fontSize: 13,
  //     fontWeight: FontWeight.w500,
  //     color: BaseColors.black,
  //   ),
  // );

  static TextStyle poppinsSemiMediumBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsMediumRegular = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsMediumSemiBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsMediumBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsLargeRegularBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsLargeSemiBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: BaseColors.black,
    ),
  );

  // static TextStyle merriLargeBold = GoogleFonts.merriweather(
  //   textStyle: const TextStyle(
  //     fontSize: 16,
  //     fontWeight: FontWeight.w600,
  //     color: BaseColors.black,
  //   ),
  // );

  static TextStyle poppinsExtraLargeBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsHugeBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: BaseColors.black,
    ),
  );

  static TextStyle poppinsHugeHeavyBold = GoogleFonts.poppins(
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: BaseColors.black,
    ),
  );
}
