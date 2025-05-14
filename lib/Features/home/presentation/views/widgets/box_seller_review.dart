import 'package:bookly_app/Features/home/presentation/views/widgets/container_box_seller_review.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BoxSellerReview extends StatelessWidget {
  const BoxSellerReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: ContainerBoxSellerReview(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            backgroundcolor: Colors.white,
            childtext: Text("19.99€",
                style: Styles.textStyle20.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w900)),
          )),
          Expanded(
              child: ContainerBoxSellerReview(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            backgroundcolor: const Color(0xffEF8262),
            childtext: Text(
              "Free Review",
              style: Styles.textStyle20,
            ),
          ))
        ],
      ),
    );
  }
}
