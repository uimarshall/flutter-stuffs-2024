import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Add New Address'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TextFormField
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Full Name',
                    hintText: 'Enter your full name',
                  ),
                ),
                const SizedBox(height: TSizes.spaceBetweenInputField),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                ),
                const SizedBox(height: TSizes.spaceBetweenInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building_3),
                          labelText: 'Street',
                          hintText: 'Enter your street',
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBetweenInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.code),
                          labelText: 'Postal Code',
                          hintText: 'Enter your postal code',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBetweenInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.location),
                          labelText: 'City',
                          hintText: 'Enter your city',
                        ),
                      ),
                    ),
                    const SizedBox(width: TSizes.spaceBetweenInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.activity),
                          labelText: 'State',
                          hintText: 'Enter your state',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBetweenInputField),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.global),
                    labelText: 'Country',
                    hintText: 'Enter your country',
                  ),
                ),
                const SizedBox(height: TSizes.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save Address'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
