import 'package:bookly_app/Features/home/presentation/views/widgets/box_best_seller_list_item.dart';
import 'package:flutter/material.dart';

class SearchView extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Search any Book ...';
  @override
  TextStyle get searchFieldStyle => const TextStyle(fontSize: 16);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const CustomScrollView(slivers: [
      BoxBestSellerListItem(),
    ]);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text("Search Any Books"));
  }
}
