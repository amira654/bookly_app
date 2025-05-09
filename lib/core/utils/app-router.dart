import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/home_vew.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/views/aplash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return BlocProvider(
              create: (context) => SimilarBooksCubit(
                    getIt.get<HomeRepoImp>(),
                  ),
              child: BookDetailsView(
                bookModel: state.extra as BookModel,
              ));
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
