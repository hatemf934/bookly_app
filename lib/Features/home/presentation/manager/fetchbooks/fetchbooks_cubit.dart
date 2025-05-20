import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'fetchbooks_state.dart';

class FetchbooksCubit extends Cubit<FetchbooksState> {
  FetchbooksCubit(this.homeRepo) : super(FetchbooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchbooks() async {
    emit(FetchbooksLoading());
    var result = await homeRepo.fetchnewstbooks();
    result.fold(
      (faliure) {
        emit(FetchbooksFaluire(
            errMessage: faliure.message,
            icon: faliure.icon,
            statusCode: faliure.statusCode));
      },
      (books) {
        emit(FetchbooksSucsses(books: books));
      },
    );
  }
}
