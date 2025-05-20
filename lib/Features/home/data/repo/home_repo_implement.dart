import 'package:bookly_app/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/core/api_class.dart';
import 'package:bookly_app/core/error/faliure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiClass apiClass;

  HomeRepoImplement({required this.apiClass});
  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchnewstbooks() async {
    try {
      var data = await apiClass.get(
          endpoint:
              "volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest");

      return right((data["items"] as List)
          .map((commit) => Bookmodel.fromJson(commit))
          .toList());
    } catch (e) {
      if (e is DioException) {
        left(ServerFaliure.fromdioexception(e));
      }
      return Left(
          ServerFaliure(Icons.error, message: e.toString(), statusCode: 0));
    }
  }

  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchbooksdetails() async {
    try {
      var data = await apiClass.get(
          endpoint: "volumes?q=subject:Programming&Filtering=free-ebooks");

      return right((data["items"] as List)
          .map((commit) => Bookmodel.fromJson(commit))
          .toList());
    } catch (e) {
      if (e is DioException) {
        left(ServerFaliure.fromdioexception(e));
      }
      return Left(
          ServerFaliure(Icons.error, message: e.toString(), statusCode: 0));
    }
  }
}
