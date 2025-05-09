import 'package:bookly/core/utils/app-router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repos/home_repo_imp.dart';
import 'features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'features/home/presentation/manager/newest_book/newest_books_cubit.dart';

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
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme: GoogleFonts.montserratTextTheme(),
        ),
      ),
    );
  }
}
