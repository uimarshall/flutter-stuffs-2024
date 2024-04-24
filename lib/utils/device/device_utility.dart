import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(BuildContext context,
      {Color? color}) async {
    await Future.delayed(const Duration(milliseconds: 100));
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color,
      ),
    );
  }

  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  // set full screen
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static bool isLandscape(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortrait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenHeightWithoutStatusBar(BuildContext context) {
    return MediaQuery.of(context).size.height - getStatusBarHeight(context);
  }

  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

// pixel ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static Future<void> setNavigationBarColor(BuildContext context,
      {Color? color}) async {
    await Future.delayed(const Duration(milliseconds: 100));
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: color,
      ),
    );
  }

  static Future<void> setSystemBarColor(BuildContext context,
      {Color? statusBarColor, Color? navigationBarColor}) async {
    await Future.delayed(const Duration(milliseconds: 100));
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: navigationBarColor,
      ),
    );
  }

  static Future<void> setSystemBarLight(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 100));
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  static Future<void> setSystemBarDark(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 100));
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  // Get screen height

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDevicePixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double getDeviceTextScaleFactor(BuildContext context) {
    return MediaQuery.of(context).textScaleFactor;
  }

  static double getDevicePaddingTop(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getDevicePaddingBottom(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getDevicePaddingLeft(BuildContext context) {
    return MediaQuery.of(context).padding.left;
  }

  static double getDevicePaddingRight(BuildContext context) {
    return MediaQuery.of(context).padding.right;
  }

  static double getDevicePaddingHorizontal(BuildContext context) {
    return MediaQuery.of(context).padding.left +
        MediaQuery.of(context).padding.right;
  }

  static double getDevicePaddingVertical(BuildContext context) {
    return MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;
  }

  static double getDevicePadding(BuildContext context) {
    return MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom +
        MediaQuery.of(context).padding.left +
        MediaQuery.of(context).padding.right;
  }

  static double getDeviceAppBarHeight(BuildContext context) {
    return kToolbarHeight;
  }

  static double getDeviceStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getDeviceBottomBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getBottomNavigationBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }
  // static double getAppBarHeight(BuildContext context) {
  //   return kToolbarHeight;
  // }

  static double getKeyboardHeight() {
    return MediaQuery.of(Get.context!).viewInsets.bottom;
  }
  // static double getKeyboardHeight(BuildContext context) {
  //   return MediaQuery.of(context).viewInsets.bottom;
  // }

  static Future<bool> isKeyboardVisible() async {
    return View.of(Get.context!).viewInsets.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<bool> isAndroid() async {
    return defaultTargetPlatform == TargetPlatform.android;
  }

  static Future<bool> isIOS() async {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<bool> isWeb() async {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<bool> isMacOS() async {
    return defaultTargetPlatform == TargetPlatform.macOS;
  }

  static Future<bool> isWindows() async {
    return defaultTargetPlatform == TargetPlatform.windows;
  }

  static Future<bool> isLinux() async {
    return defaultTargetPlatform == TargetPlatform.linux;
  }

  static Future<bool> isFuchsia() async {
    return defaultTargetPlatform == TargetPlatform.fuchsia;
  }

  static Future<bool> isMobile() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<bool> isDesktop() async {
    return defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;
  }

  static Future<bool> isWebMobile() async {
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.fuchsia;
  }

  static Future<bool> isWebDesktop() async {
    return defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;
  }

  static Future<bool> isWebIOS() async {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }

  static Future<bool> isWebAndroid() async {
    return defaultTargetPlatform == TargetPlatform.android;
  }

  static Future<bool> isWebFuchsia() async {
    return defaultTargetPlatform == TargetPlatform.fuchsia;
  }

  static Future<bool> isWebWindows() async {
    return defaultTargetPlatform == TargetPlatform.windows;
  }

  static Future<bool> isWebLinux() async {
    return defaultTargetPlatform == TargetPlatform.linux;
  }

  static Future<bool> isWebMacOS() async {
    return defaultTargetPlatform == TargetPlatform.macOS;
  }

  static Future<bool> isWebMobileIOS() async {
    return defaultTargetPlatform == TargetPlatform.iOS;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  static void vibrateHeavy() {
    HapticFeedback.heavyImpact();
  }

  static void vibrateMedium() {
    HapticFeedback.mediumImpact();
  }

  static void vibrateLight() {
    HapticFeedback.lightImpact();
  }

  static void vibrateSelection() {
    HapticFeedback.selectionClick();
  }

  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static Future<void> setPreferredOrientationPortraitUp() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static Future<void> setPreferredOrientationPortraitDown() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown]);
  }

  static Future<void> setPreferredOrientationLandscapeLeft() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft]);
  }

  static Future<void> setPreferredOrientationLandscapeRight() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight]);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  static void hideNavigationBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
  }

  static void hideSystemBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  static void showSystemBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // static bool isIOS() {
  //   return Platform.isIOS;
  // }

  // static bool isAndroid() {
  //   return Platform.isAndroid;
  // }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static double getDeviceBottomBarHeightWithAppBar(BuildContext context) {
    return MediaQuery.of(context).padding.bottom + kToolbarHeight;
  }

  static double getDeviceBottomBarHeightWithSafeArea(BuildContext context) {
    return MediaQuery.of(context).padding.bottom + 10.0;
  }

  static double getDeviceBottomBarHeightWithOutSafeArea(BuildContext context) {
    return 10.0;
  }

  static double getDeviceBottomBarHeightWithOutSafeAreaAndBottomBar(
      BuildContext context) {
    return 0.0;
  }

  static double getDeviceBottomBarHeightWithOutSafeAreaAndBottomBarAndTopBar(
      BuildContext context) {
    return 0.0;
  }

  static double getDeviceBottomBarHeightWithOutSafeAreaAndTopBar(
      BuildContext context) {
    return 0.0;
  }

  static launchUrlString(String url) {}

  static canLaunchUrlString(String url) {}
}
