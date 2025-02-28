import 'package:fruits_hub/core/supabase/database_services.dart';
import 'package:fruits_hub/core/supabase/supabase_auth_services.dart';
import 'package:fruits_hub/features/auth/data/repo/supabase_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:fruits_hub/features/home/data/repo/home_repo_impl.dart';
import 'package:fruits_hub/features/home/domain/repo/home_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton<DatabaseServices>(DatabaseServices());

  getIt.registerSingleton<AuthRepo>(SupabaseRepoImpl(
    SupabaseAuthServices(),
    getIt.get<DatabaseServices>(),
  ));

  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      getIt.get<DatabaseServices>(),
    ),
  );
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
}

