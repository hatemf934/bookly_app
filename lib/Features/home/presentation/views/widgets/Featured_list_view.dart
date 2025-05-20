import 'package:bookly_app/Features/home/presentation/manager/fetchbooks/fetchbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/Featured_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_circle_progress.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchbooksCubit, FetchbooksState>(
      builder: (context, state) {
        if (state is FetchbooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FeaturedListViewItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  );
                }),
          );
        } else if (state is FetchbooksFaluire) {
          return CustomError(errorMessage: state.errMessage, icon: state.icon);
        } else {
          return const CustomCircleProgress();
        }
      },
    );
  }
}
