import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          btnText: 'Change',
          onPressed: () {},
        ),
        Text('Pendle sports', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBetweenItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: TColors.primary, size: 20),
            const SizedBox(height: TSizes.spaceBetweenItems / 2),
            Text('1234 Main Street',
                style: Theme.of(context).textTheme.bodyMedium),
            // Text('+44-345-567-435',
            //     style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: TSizes.spaceBetweenItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history,
                color: TColors.primary, size: 20),
            const SizedBox(height: TSizes.spaceBetweenItems / 2),
            // Text('1234 Main Street',
            //     style: Theme.of(context).textTheme.bodyMedium),
            Text('+44-345-567-435',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}
