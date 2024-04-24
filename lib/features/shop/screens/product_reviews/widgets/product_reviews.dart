import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/ratings/ratings_indicator.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';
import 'package:get/get.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(
          title: Text('Product Reviews & Ratings'),
          showBackArrow: true,
        ),
        // Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'Product Reviews & Ratings are verified from happy users of this products and are genuine.'),
                const SizedBox(height: TSizes.spaceBetweenItems),

                //Overall Product Ratings
                const TOverAllProductRating(),
                // Ratings
                const TRatingBarIndicator(
                  ratingValue: 4.5,
                ),
                // No of Reviews for a particular product
                //  Text(data.length.toString() + ' Reviews'),
                Text(
                  '1016 Reviews',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: TSizes.spaceBetweenItems),
                // Review List
                const UserReviewCard(),
                const UserReviewCard(),
                const UserReviewCard(),

                // Product Title

                // Product Brand
              ],
            ),
          ),
        ));
  }
}
