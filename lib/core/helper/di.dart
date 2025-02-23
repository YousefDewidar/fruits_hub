import 'package:fruits_hub/features/auth/data/repo/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl());
}
