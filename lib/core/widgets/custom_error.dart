import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError(
      {super.key, required this.errorMessage, required this.icon});
  final String errorMessage;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
