import 'package:bookly/core/utils/api_servce.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServer>(ApiServer(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
    getIt.get<ApiServer>(),
  ));
}
