import 'package:flutter/material.dart';

// Customizable Chip Theme

// Light theme

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.transparent,
    brightness: Brightness.light,
    deleteIconColor: Colors.black,
    disabledColor: Colors.grey.withOpacity(0.4),
    checkmarkColor: Colors.white,
    labelPadding: const EdgeInsets.symmetric(horizontal: 8),
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    secondaryLabelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    secondarySelectedColor: Colors.blue,
    selectedColor: Colors.blue,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    side: const BorderSide(
      color: Colors.blue,
    ),
  );

  // Dark theme

  static ChipThemeData darkChipTheme = const ChipThemeData(
    backgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    deleteIconColor: Colors.white,
    disabledColor: Colors.grey,
    checkmarkColor: Colors.white,
    labelPadding: EdgeInsets.symmetric(horizontal: 8),
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    secondaryLabelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    secondarySelectedColor: Colors.blue,
    selectedColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    side: BorderSide(
      color: Colors.blue,
    ),
  );
}
