import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/main/domain/entities/cart_item_entity.dart';
import 'package:fruits_hub/features/main/ui/manager/cart_cubit/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  List<CartItemEntity> cartList = [];

  void addToCart(CartItemEntity product) {
    cartList.add(product);
    emit(AddedToCart());
  }

  void removeFromCart(CartItemEntity product) {
    cartList.remove(product);
    emit(RemovedFromCart());
  }

  
}
