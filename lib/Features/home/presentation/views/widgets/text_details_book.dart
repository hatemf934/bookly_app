import 'package:bookly_app/Features/home/presentation/views/widgets/row_rating_best_seller.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextDetailsBook extends StatelessWidget {
  const TextDetailsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            "hatem fathy",
            style: Styles.textStyle20.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 6),
        const RowRatingBestSeller(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
