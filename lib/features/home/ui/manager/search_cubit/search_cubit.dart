import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/helper/di.dart';
import 'package:fruits_hub/features/home/domain/repo/home_repo.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._homeRepo) : super(SearchInitial());

  final HomeRepo _homeRepo;

  Future<void> searchProducts({required String query}) async {
    emit(SearchLoading());
    final data = await _homeRepo.searchProducts(query: query);
    data.fold(
      (failuer) {
        emit(SearchFailure(message: failuer.message));
      },
      (products) {
        emit(SearchSuccess(products: products));
      },
    );
  }

  Future<void> clearSearchHistory({String? searchText}) async {
    final prefs = getIt.get<SharedPreferences>();
    if (searchText != null) {
      final List<String> searchHistory =
          prefs.getStringList('searchHistory') ?? [];
      searchHistory.remove(searchText);
      await prefs.setStringList('searchHistory', searchHistory);
    } else {
      await prefs.remove('searchHistory');
    }

    emit(SearchInitial());
  }

  void rebuildSearchHistory() {
    emit(SearchInitial());
  }
}
