import 'package:bookly_app/Features/home/data/repo/home_repo_implement.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetchbooks/fetchbooks_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetchbooksdetails/fetchbooksdetails_cubit.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/api_class.dart';
import 'package:bookly_app/core/utils/go_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchbooksCubit(getIt.get<HomeRepoImplement>()),
        ),
        BlocProvider(
          create: (context) =>
              FetchbooksdetailsCubit(getIt.get<HomeRepoImplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: GoRouterClass.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
