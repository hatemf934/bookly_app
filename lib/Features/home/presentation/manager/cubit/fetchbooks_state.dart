part of 'fetchbooks_cubit.dart';

sealed class FetchbooksState extends Equatable {
  const FetchbooksState();

  @override
  List<Object> get props => [];
}

final class FetchbooksInitial extends FetchbooksState {}
