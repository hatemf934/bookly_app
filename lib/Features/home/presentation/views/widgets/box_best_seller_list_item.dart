import 'package:bookly_app/Features/home/presentation/views/widgets/box_best_seller_item.dart';
import 'package:flutter/material.dart';

class BoxBestSellerListItem extends StatelessWidget {
  const BoxBestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BoxBestSellerItem();
        });
  }
}
