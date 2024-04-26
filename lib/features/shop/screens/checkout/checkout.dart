import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/cart/widgets/t_cart_items.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/checkout/widgets/t_billing_address_section.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/checkout/widgets/t_billing_amount_section.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/checkout/widgets/t_billing_payment_section.dart';
import 'package:flutter_stuffs_2024/navigation_menu.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_stuffs_2024/shared/widgets/success_screen/success_screen.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:flutter_stuffs_2024/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Checkout Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order Summary
              Text(
                'Order Summary',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: TSizes.spaceBetweenItems),
              // Items in cart
              const TCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(height: TSizes.spaceBetweenItems),
              // Coupons Textfield

              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBetweenSections),

              // Billing Section

              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                borderColor: dark ? TColors.darkGrey : TColors.grey,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Pricing
                    TBillingAmountSection(
                      title: 'SubTotal',
                      price: '\$378.0',
                      shippingTitle: 'Shipping Fee',
                      shippingPrice: '\$0.6',
                      taxTitle: 'Tax Fee',
                      taxFee: '\$0.6',
                      orderTitle: 'Order Total',
                      orderTotalPrice: '\$378.0',
                    ),
                    SizedBox(height: TSizes.spaceBetweenItems),
                    Divider(),

                    SizedBox(height: TSizes.spaceBetweenItems),
                    //   Payment Method
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBetweenItems),
                    // Billing Address
                    TBillingAddressSection(),

                    SizedBox(height: TSizes.spaceBetweenItems),
                  ],
                ),
              ),

              // Product Image
              // Image.asset(
              //   'assets/images/products/product_1.png',
              //   width: 100,
              //   height: 100,
              // ),
              // const SizedBox(height: 16),
              // Product Title
              // Text(
              //   'Product Title',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // const SizedBox(height: 16),
              // // Product Price
              // Text(
              //   '\$378.0',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // const SizedBox(height: 16),
              // // Quantity
              // Row(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     // Add Remove Buttons
              //     IconButton(
              //       icon: const Icon(Icons.remove),
              //       onPressed: () {},
              //     ),
              //     const SizedBox(width: 16),
              //     Text(
              //       '3',
              //       style: Theme.of(context).textTheme.titleSmall,
              //     ),
              //     const SizedBox(width: 16),
              //     IconButton(
              //       icon: const Icon(Icons.add),
              //       onPressed: () {},
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 16),
              // // Total Price
              // Text(
              //   'Total: \$378.0',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // const SizedBox(height: 16),
              // // Delivery Address
              // Text(
              //   'Delivery Address',
              //   style: Theme.of(context).textTheme.headlineSmall,
              // ),
              // const SizedBox(height: 16),
              // // Address
              // Text(
              //   'Address',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // const SizedBox(height: 16),
              // // Payment Method
              // Text(
              //   'Payment Method',
              //   style: Theme.of(context).textTheme.headlineSmall,
              // ),
              // const SizedBox(height: 16),
              // // Payment Method
              // Text(
              //   'Payment Method',
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              // const SizedBox(height: 16),
              // // Checkout Button
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text('Checkout \$378.0'),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () {
              Get.to(() => SuccessScreen(
                    title: 'Payment Success',
                    subTitle: 'Your order will be shipped soon',
                    image: TImages.facebook,
                    onPressed: () {
                      Get.offAll(() => const NavigationMenu());
                    },
                  ));
            },
            child: const Text('Checkout \$378.0')),
      ),
    );
  }
}
