import 'package:flutter/material.dart';

class CustomCircleProgress extends StatelessWidget {
  const CustomCircleProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 2,
        backgroundColor: Colors.black54,
      ),
    );
  }
}
