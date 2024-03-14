import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/chips/choice_chip.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/product_cards/product_price_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/product_title_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              // Title, price and Stock status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variations',
                    showActionButton: false,
                    textColor: TColors.black,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBetweenItems,
                  ),
                  // Product title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price',
                            isSmallSizeText: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBetweenItems,
                          ),
                          // Actual Price
                          Text(
                            '\$290',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          const SizedBox(
                            width: TSizes.spaceBetweenItems,
                          ),
                          // Sale price
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBetweenItems,
                      ),
                      // Stock status
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock:',
                            isSmallSizeText: true,
                          ),
                          const SizedBox(
                            width: TSizes.spaceBetweenItems,
                          ),
                          Text(
                            'In Stock',
                            style:
                                Theme.of(context).textTheme.titleMedium!.apply(
                                      color: Colors.green,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // variation Description
              const TProductTitleText(
                title:
                    'This is the product description and can go up to a maximum of 4 lines',
                isSmallSizeText: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBetweenItems,
        ),
        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Colors',
              showActionButton: false,
              textColor: TColors.black,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                // Color variations
                TChoiceChip(
                  text: 'Green',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Green',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Green',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Blue',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'Yellow',
                  isSelected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        // Sizes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(
              title: 'Size',
              showActionButton: false,
              textColor: TColors.black,
            ),
            const SizedBox(
              height: TSizes.spaceBetweenItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: 'EU 23',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 57',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: 'EU 90',
                  isSelected: true,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
