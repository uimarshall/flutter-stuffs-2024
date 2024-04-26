import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection(
      {super.key,
      required this.title,
      required this.price,
      required this.shippingTitle,
      required this.shippingPrice,
      required this.taxTitle,
      required this.taxFee,
      required this.orderTitle,
      required this.orderTotalPrice});
  final String title;
  final String price;
  final String shippingTitle;
  final String shippingPrice;
  final String taxTitle;

  final String taxFee;

  final String orderTitle;

  final String orderTotalPrice;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              price,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems / 2),
        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              shippingTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              shippingPrice,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              taxTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              taxFee,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              orderTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              orderTotalPrice,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
