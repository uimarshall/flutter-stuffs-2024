import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/personalization/screens/address/add_new_address.dart';
import 'package:flutter_stuffs_2024/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () {
          Get.to(() => const AddNewAddressScreen());
        },
        child: const Icon(
          Icons.add,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        title: Text(
          'Address',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TSingleAddress(
                selectedAddress: true,
              ),
              TSingleAddress(
                selectedAddress: false,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


// : Text(
//                       'Add your address to make shopping easier.',
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),