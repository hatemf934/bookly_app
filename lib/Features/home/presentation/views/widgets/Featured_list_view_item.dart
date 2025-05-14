import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 20),
      child: AspectRatio(
        aspectRatio: 2.8 / 4.2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(AssetManager.ktest))),
        ),
      ),
    );
  }
}
