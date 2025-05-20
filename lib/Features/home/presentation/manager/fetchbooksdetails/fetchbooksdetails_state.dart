part of 'fetchbooksdetails_cubit.dart';

sealed class FetchbooksdetailsState extends Equatable {
  const FetchbooksdetailsState();

  @override
  List<Object> get props => [];
}

final class FetchbooksdetailsInitial extends FetchbooksdetailsState {}

final class FetchbooksdetailsSucsses extends FetchbooksdetailsState {
  final List<Bookmodel> books;
  const FetchbooksdetailsSucsses({required this.books});
}

final class FetchbooksdetailsLoading extends FetchbooksdetailsState {}

final class FetchbooksdetailsFaluire extends FetchbooksdetailsState {
  final String errMessage;
  final IconData icon;
  final int statusCode;
  const FetchbooksdetailsFaluire(
      {required this.errMessage, required this.icon, required this.statusCode});
}
