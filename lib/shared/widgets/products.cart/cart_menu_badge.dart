import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/cart/cart.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:get/get.dart';

class TCartCounterBadge extends StatelessWidget {
  const TCartCounterBadge({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Icons.shopping_cart, color: iconColor),
          onPressed: () => Get.to(() => const CartScreen()),
        ),
        Positioned(
          top: 4.0,
          right: 0,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 1),
              ),
            ),
          ),
        )
      ],
    );
  }
}
