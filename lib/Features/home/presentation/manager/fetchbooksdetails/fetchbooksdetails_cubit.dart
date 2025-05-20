import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'fetchbooksdetails_state.dart';

class FetchbooksdetailsCubit extends Cubit<FetchbooksdetailsState> {
  FetchbooksdetailsCubit(this.homeRepo) : super(FetchbooksdetailsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchbooksdetails() async {
    emit(FetchbooksdetailsLoading());
    var result = await homeRepo.fetchbooksdetails();
    result.fold(
      (faliure) {
        emit(FetchbooksdetailsFaluire(
            errMessage: faliure.message,
            icon: faliure.icon,
            statusCode: faliure.statusCode));
      },
      (books) {
        emit(FetchbooksdetailsSucsses(books: books));
      },
    );
  }
}
