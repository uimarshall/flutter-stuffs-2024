import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/cart/add_remove_button.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/cart/cart_item.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_price_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/product_title_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap:
                  true, // This will shrink the listview to only take up the space it needs to display its children and avoid error of `Vertical viewport was given unbounded height.`
              separatorBuilder: (_, __) =>
                  const SizedBox(height: TSizes.spaceBetweenSections),
              itemCount: 10,
              itemBuilder: (_, index) => const Column(
                    children: [
                      TCartItem(),
                      SizedBox(height: TSizes.spaceBetweenItems),
                      Row(
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
                      Divider(
                        color: TColors.grey,
                        thickness: 0.5,
                      ),
                    ],
                  ))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {}, child: const Text('Checkout \$378.0')),
      ),
    );
  }
}
