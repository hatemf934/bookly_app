import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:bookly_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetManager.klogo,
          width: 100,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchView());
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass))
      ],
    );
  }
}
