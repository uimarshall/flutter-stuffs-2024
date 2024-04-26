import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_price_text.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap:
            true, // This will shrink the listview to only take up the space it needs to display its children and avoid error of `Vertical viewport was given unbounded height.`
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBetweenSections),
        itemCount: 2,
        itemBuilder: (_, index) => Column(
              children: [
                // Cart Item
                const TCartItem(),
                if (showAddRemoveButtons)
                  const SizedBox(height: TSizes.spaceBetweenItems),
                // Add/Remove buttons Row with total price
                if (showAddRemoveButtons)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Extra Space
                          SizedBox(
                            width: 70,
                          ),
                          TProductQuantityWithAddAndRemoveButtons(),
                        ],
                      ),
                      TProductPriceText(price: '124')
                    ],
                  ),
                const Divider(
                  color: TColors.grey,
                  thickness: 0.5,
                ),
              ],
            ));
  }
}
