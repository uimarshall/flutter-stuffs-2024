import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/personalization/screens/address/user_address.dart';
import 'package:flutter_stuffs_2024/features/personalization/screens/profile/profile.dart';
import 'package:flutter_stuffs_2024/shared/widgets/appbar/app_bar.dart';
import 'package:flutter_stuffs_2024/shared/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_stuffs_2024/shared/widgets/images/t_circular_image.dart';
import 'package:flutter_stuffs_2024/shared/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_stuffs_2024/shared/widgets/list_tiles/t_user_profile_tile.dart';
import 'package:flutter_stuffs_2024/shared/widgets/texts/section_heading.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/constants/image_strings.dart';
import 'package:flutter_stuffs_2024/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                // App bar
                TAppBar(
                  title: (Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white))),
                ),
                // User profile card
                TUserProfileTile(
                  onPressed: () => Get.to(() => const ProfileScreen()),
                ),
                const SizedBox(height: TSizes.spaceBetweenSections),
              ],
            )),
            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBetweenItems),
                  TSettingsMenuTile(
                    icon: Icons.home_work,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery addresses',
                    onTap: () {
                      Get.to(() => const UserAddressScreen());
                    },
                  ),
                  TSettingsMenuTile(
                    icon: Icons.shop,
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.shop_2,
                    title: 'My Orders',
                    subtitle: 'In-progress and completed orders',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.local_post_office,
                    title: 'Bank Account',
                    subtitle: 'Withdraw from wallet to registered bank account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.ballot,
                    title: 'My Coupons',
                    subtitle: 'List of all the discounted Coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.notifications,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notifications',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.security,
                    title: 'Account Privacy',
                    subtitle: 'Manage your account privacy settings',
                    onTap: () {},
                  ),
                  SizedBox(height: TSizes.spaceBetweenSections),
                  // App Settings
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBetweenItems),
                  TSettingsMenuTile(
                    icon: Icons.language,
                    title: 'Language',
                    subtitle: 'Change the app language',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.color_lens,
                    title: 'Theme',
                    subtitle: 'Change the app theme',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.document_scanner,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your cloud provider',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.location_city,
                    title: 'GeoLocation',
                    subtitle: 'Set recommendations based on location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Icons.security_update,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all users',
                    onTap: () {},
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  TSettingsMenuTile(
                    icon: Icons.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    onTap: () {},
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  // Logout Button
                  const SizedBox(height: TSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBetweenSections * 2.5,
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
