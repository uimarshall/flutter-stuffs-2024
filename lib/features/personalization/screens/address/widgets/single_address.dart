import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        width: double.infinity,
        showBorder: true,
        backgroundColor: selectedAddress
            ? TColors.primary.withOpacity(0.5)
            : Colors.transparent,
        borderColor: selectedAddress
            ? Colors.transparent
            : dark
                ? TColors.darkGrey
                : TColors.grey,
        margin: const EdgeInsets.only(bottom: TSizes.spaceBetweenItems),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Icon(selectedAddress ? Icons.check_circle : null,
                  color: selectedAddress
                      ? dark
                          ? TColors.light
                          : TColors.dark.withOpacity(0.6)
                      : null),
            ),
            Column(
              children: [
                // Icon(
                //   Icons.location_on,
                //   color: dark ? TColors.light : TColors.dark,
                // ),
                // const SizedBox(width: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // Text(
                  //   'Home',
                  //   style: TextStyle(
                  //     color: dark ? TColors.light : TColors.dark,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(height: 5),
                  Text(
                    'Wayne Rooney',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: TSizes.sm / 2),
                  Text(
                    '(+44) 234 567 890',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: dark ? TColors.light : TColors.dark,
                    ),
                  ),
                  const SizedBox(height: TSizes.sm / 2),
                  Text('123 Ilkley Main Street, West Yorkshire, United Kingdom',
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: dark ? TColors.light : TColors.dark,
                          )),
                ])
              ],
            ),

            // Row(
            //   children: [
            //     Icon(
            //       Icons.phone,
            //       color: dark ? TColors.light : TColors.dark,
            //     ),
            //     const SizedBox(width: 10),
            //     Text(
            //       '+1 234 567 890',
            //       style: TextStyle(
            //         color: dark ? TColors.light : TColors.dark,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ));
  }
}
