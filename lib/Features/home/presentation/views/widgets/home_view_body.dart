import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/box_best_seller_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedListView(),
          const SizedBox(height: 50),
          Text("Best Seller", style: Styles.textStyle18),
          const BoxBestSellerItem(),
        ],
      ),
    );
  }
}
