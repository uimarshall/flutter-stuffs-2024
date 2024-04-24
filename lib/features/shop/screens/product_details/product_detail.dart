import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_reviews/widgets/product_reviews.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/icons/t_circular_icon.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image slider
            const TProductImageSlider(),
            // Product details

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Ratings & share Button
                  const TRatingAndShare(),

                  // Price,Title,Stock,& Brand
                  const TProductMetaData(
                    productPrice: '\$290',
                  ),

                  // Attributes - For product variations such as color

                  const TProductAttributes(),
                  // Checkout Button
                  const SizedBox(
                    height: TSizes.spaceBetweenItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenItems,
                  ),
                  // Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenItems,
                  ),
                  const ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  // Reviews
                  Divider(
                    color: THelperFunctions.isDarkMode(context)
                        ? TColors.darkGrey
                        : TColors.grey,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(234)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
