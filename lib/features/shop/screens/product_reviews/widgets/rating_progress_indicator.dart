import 'package:flutter/material.dart';
import 'package:flutter_stuffs_2024/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class TOverAllProductRating extends StatelessWidget {
  const TOverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.9',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(children: [
            // Progress Indicator
            TRatingProgressIndicator(
              text: '5',
              progressValue: 1.0,
            ),
            TRatingProgressIndicator(
              text: '4',
              progressValue: 0.8,
            ),
            TRatingProgressIndicator(
              text: '3',
              progressValue: 0.5,
            ),
            TRatingProgressIndicator(
              text: '2',
              progressValue: 0.3,
            ),
            TRatingProgressIndicator(
              text: '1',
              progressValue: 0.2,
            ),
          ]),
        )
      ],
    );
  }
}
