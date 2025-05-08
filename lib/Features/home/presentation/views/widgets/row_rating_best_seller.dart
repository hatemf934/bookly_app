import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowRatingBestSeller extends StatelessWidget {
  const RowRatingBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(width: 7),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "(222)",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
