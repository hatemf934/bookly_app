part of 'fetchbooks_cubit.dart';

sealed class FetchbooksState extends Equatable {
  const FetchbooksState();

  @override
  List<Object> get props => [];
}

final class FetchbooksInitial extends FetchbooksState {}

final class FetchbooksSucsses extends FetchbooksState {
  final List<Bookmodel> books;
  const FetchbooksSucsses({required this.books});
}

final class FetchbooksLoading extends FetchbooksState {}

final class FetchbooksFaluire extends FetchbooksState {
  final String errMessage;
  final IconData icon;
  final int statusCode;
  const FetchbooksFaluire(
      {required this.errMessage, required this.icon, required this.statusCode});
}
