import 'package:bookly_app/Features/home/presentation/views/widgets/column_best_seller_text.dart';
import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:bookly_app/core/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BoxBestSellerItem extends StatelessWidget {
  const BoxBestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 45),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(GoRouterClass.kdetailsview);
        },
        child: Row(
          children: [
            SizedBox(
              height: 150,
              child: AspectRatio(
                aspectRatio: 2.6 / 4.2,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(AssetManager.ktest))),
                ),
              ),
            ),
            const SizedBox(width: 30),
            const ColumnBestSellerText(),
          ],
        ),
      ),
    );
  }
}
