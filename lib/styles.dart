import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace_app/custom_colors.dart';





// BORDER RADUIS

const double kBorderRadius = 8;
const double kPaddingHorizontal = 8;

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: const BorderSide(
    color: CustomColor.kPrimary
)
);

final kEncodeSansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);

final kEncodeSansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);

final kEncodeSansRegular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);


