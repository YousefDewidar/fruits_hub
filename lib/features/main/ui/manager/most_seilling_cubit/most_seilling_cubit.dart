import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/main/domain/repo/home_repo.dart';
import 'package:fruits_hub/features/main/ui/manager/most_seilling_cubit/most_seilling_state.dart';

class MostSeillingCubit extends Cubit<MostSeillingState> {
  MostSeillingCubit(this.homeRepo) : super(MostSeillingInitial());
  final HomeRepo homeRepo;

  Future<void> getMostSeillingProducts() async {
    emit(MostSeillingLoading());
    final data = await homeRepo.getMostSellingProducts();
    data.fold(
      (failuer) {
        emit(MostSeillingFailure(message: failuer.message));
      },
      (products) {
        emit(MostSeillingSuccess(products: products));
      },
    );
  }
}
