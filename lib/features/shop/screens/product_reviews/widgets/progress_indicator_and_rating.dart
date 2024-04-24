import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';
import 'package:flutter_stuffs_2024/utils/device/device_utility.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.progressValue,
  });

  final String text;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: TDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: progressValue,
                minHeight: 10,
                backgroundColor: TColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(TColors.primary),
              ),
            )),
      ],
    );
  }
}
