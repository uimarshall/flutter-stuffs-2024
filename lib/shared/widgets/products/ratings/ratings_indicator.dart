import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_stuffs_2024/utils/constants/colors.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.ratingValue,
  });

  final double ratingValue;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratingValue,
      itemCount: 5,
      itemSize: 20,
      itemBuilder: (_, __) => const Icon(
        Icons.star,
        color: TColors.primary,
      ),
    );
  }
}
