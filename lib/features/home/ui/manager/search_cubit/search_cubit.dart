import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/home/domain/repo/home_repo.dart';
import 'package:fruits_hub/features/home/ui/manager/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._homeRepo) : super(SearchInitial());

  final HomeRepo _homeRepo;

  Future<void> searchProducts({required String query}) async {
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
}
