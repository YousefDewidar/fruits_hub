import 'package:fruits_hub/features/auth/data/repo/supabase_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

var getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<AuthRepo>(SupabaseRepoImpl());
}

late SharedPreferences pref;

Future<void> initSharedPref() async {
  pref = await SharedPreferences.getInstance();
}
