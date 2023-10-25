import 'package:flutter/painting.dart';
import 'color.dart';
import 'package:google_fonts/google_fonts.dart';

// Simple
TextStyle headlineTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 26,
        color: textPrimary,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w300));

TextStyle menuTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(color: textPrimary, letterSpacing: 1));

TextStyle headlineSecondaryTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 20, color: textPrimary, fontWeight: FontWeight.w300));

TextStyle subtitleTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(fontSize: 16, color: textSecondary, letterSpacing: 1));

TextStyle bodyTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary));

TextStyle buttonTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 12, color: textPrimary, letterSpacing: 1));

TextStyle listTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));

TextStyle listTittleTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 14, color: textPrimary, letterSpacing: 1));

TextStyle listSubTittleTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(fontSize: 14, color: textSecondary2, letterSpacing: 1));



// Advanced
// TODO: Add additional text styles.
