import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fetchbooks_state.dart';

class FetchbooksCubit extends Cubit<FetchbooksState> {
  FetchbooksCubit() : super(FetchbooksInitial());
}
