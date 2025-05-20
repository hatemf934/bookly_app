import 'package:bookly_app/Features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/core/api_class.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiClass>(ApiClass());
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(getIt.get<ApiClass>()));
}
