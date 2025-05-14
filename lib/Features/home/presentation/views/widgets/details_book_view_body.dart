import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/box_seller_review.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured-details_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/text_details_book.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsBookViewBody extends StatelessWidget {
  const DetailsBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPrimarypadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const FeaturedListViewItem(),
          ),
          const TextDetailsBook(),
          const SizedBox(height: 30),
          const BoxSellerReview(),
          const SizedBox(height: 30),
          Text(
            "You can also like",
            style: Styles.textStyle14,
          ),
          const FeaturedDetailsListView()
        ],
      ),
    );
  }
}
