import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/ratings/ratings_indicator.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(children: [
      // User Image and Name
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(TImages.profileImage),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  // Text(
                  //   '5 days ago',
                  //   style: Theme.of(context).textTheme.bodySmall,
                  // ),
                ],
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      const SizedBox(height: TSizes.spaceBetweenItems),
      // User Rating & Review
      Row(children: [
        // Rating
        const TRatingBarIndicator(ratingValue: 4),
        const SizedBox(height: TSizes.spaceBetweenItems),
        Text(
          '5 Dec 2023',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
      const SizedBox(height: TSizes.spaceBetweenItems),
      // User Review
      ReadMoreText(
        'This is a very good product. I am very happy with the quality of the product. I will recommend this product to my friends and family. Well done Pendle Sportwear. ',
        trimLines: 2,
        trimMode: TrimMode.Line, // This will trigger the trimlines to be 2
        // colorClickableText: dark ? Colors.white : Colors.red,
        trimExpandedText: 'Show less',
        trimCollapsedText: 'Show more',
        style: TextStyle(
          fontSize: 14,
          color: dark ? Colors.white : Colors.black,
        ),
        moreStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: TColors.info,
        ),
        lessStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: TColors.info,
        ),
      ),
      const SizedBox(height: TSizes.spaceBetweenItems),
      //  Company Reply to Reviews
      TRoundedContainer(
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Padding(
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pendle Sportwear',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '5 Dec 2023',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBetweenItems),
              ReadMoreText(
                'Thank you for your review. We are glad that you are happy with our product. We will continue to provide you with the best quality products.  Your wish is our command. ',
                trimLines: 2,
                trimMode:
                    TrimMode.Line, // This will trigger the trimlines to be 2
                // colorClickableText: dark ? Colors.white : Colors.red,
                trimExpandedText: 'Show less',
                trimCollapsedText: 'Show more',
                style: TextStyle(
                  fontSize: 14,
                  color: dark ? Colors.white : Colors.black,
                ),
                moreStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: TColors.info,
                ),
                lessStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: TColors.info,
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: TSizes.spaceBetweenItems),
    ]);
  }
}
