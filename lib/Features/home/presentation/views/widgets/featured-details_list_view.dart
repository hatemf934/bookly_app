import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedDetailsListView extends StatelessWidget {
  const FeaturedDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .22,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const FeaturedListViewItem(
              imageUrl:
                  "https://f.nooncdn.com/p/pzsku/Z272FD2DEABEE8CF8E0BFZ/45/_/1708507217/c7604877-c85c-4fca-bc27-7650420bbc7d.jpg?width=800",
            );
          }),
    );
  }
}
