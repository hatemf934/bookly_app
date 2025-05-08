import 'package:bookly_app/Features/home/presentation/views/widgets/row_rating_best_seller.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ColumnBestSellerText extends StatelessWidget {
  const ColumnBestSellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text("Harry Potter and the Goblet of Fire",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    Styles.textStyle20.copyWith(fontFamily: "GT-Secrta_Fine")),
          ),
          const SizedBox(height: 3),
          Text(
            "J.K. Rowling",
            style: Styles.textStyle14.copyWith(
                color: const Color(0xff707070), fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 3),
          Row(
            children: [
              Text(
                "19.19",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const RowRatingBestSeller(),
            ],
          )
        ],
      ),
    );
  }
}
