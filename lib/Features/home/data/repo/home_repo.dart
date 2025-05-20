import 'package:bookly_app/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_app/core/error/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<Bookmodel>>> fetchnewstbooks();
  Future<Either<Faliure, List<Bookmodel>>> fetchbooksdetails();
}
