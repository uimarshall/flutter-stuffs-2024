import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_rounded_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/product_title_text.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  Image
        TRoundedImage(
          imgUrl: TImages.shoe,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBetweenItems),
        // Product Name, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Atalanta'),
              const SizedBox(height: 5),
              const Flexible(
                child: TProductTitleText(
                  title: 'Atalanta Black/Red',
                  maxLines: 1,
                ),
              ),
              // Attributes
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: 'Color: ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Royal ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size: ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'XL 40/42 ',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ))
            ],
          ),
        )
      ],
    );
  }
}
