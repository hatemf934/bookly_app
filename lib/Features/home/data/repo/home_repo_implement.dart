import 'package:bookly_app/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/error/faliure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchbooks() {
    // TODO: implement fetchbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchbooksdetails() {
    // TODO: implement fetchbooksdetails
    throw UnimplementedError();
  }
}
