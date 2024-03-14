import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.isSelected,
    this.onSelected,
  });

  final String text;
  final bool isSelected;
  final void Function(bool)?
      onSelected; // onSelected is optional because we won't select a product if it is out of stock, and we don't want to show the user that it is out of stock, so we grey out the product button.

  @override
  Widget build(BuildContext context) {
    final isColorSelected = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: THelperFunctions.getColor(text) != null
          ? const SizedBox()
          : Text(text),
      selected: isSelected,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: isSelected ? TColors.white : null,
      ),
      avatar: isColorSelected
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: THelperFunctions.getColor(text)!)
          : null,

      labelPadding: isColorSelected ? const EdgeInsets.all(0) : null,
      // Make icon to be in the center
      padding: isColorSelected ? const EdgeInsets.all(0) : null,
      shape: isColorSelected ? const CircleBorder() : null,
      // selectedColor: Colors.green,
      backgroundColor:
          isColorSelected ? THelperFunctions.getColor(text)! : null,
    );
  }
}
