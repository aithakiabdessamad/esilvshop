import 'package:esilv_shop/model/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  List<Product> build() {
    return [];
  }

  String get priceInEuros =>
      "${(state.fold(0, (prv, actual) => prv + actual.price) / 100).toStringAsFixed(2)}€";

  void add(Product product) {
    state = [...state, product];
  }

  void remove(Product product) {
    final index = state.indexOf(product);
    if (index != -1) {
      removeAt(index);
    }
  }

  void removeAt(int index) {
    if (index >= 0 && index < state.length) {
      final newList = List<Product>.from(state);
      newList.removeAt(index);
      state = newList;
    }
  }
}

