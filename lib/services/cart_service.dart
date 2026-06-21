import 'package:flutter/foundation.dart';

import '../models/cart_item_model.dart';
import '../models/product_model.dart';

class CartService {
  CartService._();

  static final CartService instance = CartService._();

  final ValueNotifier<List<CartItemModel>> items =
      ValueNotifier<List<CartItemModel>>([]);

  double get totalPrice {
    return items.value.fold(0, (total, item) => total + item.totalPrice);
  }

  int get totalItems {
    return items.value.fold(0, (total, item) => total + item.quantity);
  }

  void addProduct(ProductModel product) {
    final currentItems = [...items.value];
    final index = currentItems.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (index == -1) {
      currentItems.add(CartItemModel(product: product, quantity: 1));
    } else {
      final item = currentItems[index];
      currentItems[index] = item.copyWith(quantity: item.quantity + 1);
    }

    items.value = currentItems;
  }

  void removeProduct(ProductModel product) {
    items.value = items.value
        .where((item) => item.product.id != product.id)
        .toList();
  }

  void clearCart() {
    items.value = [];
  }
}
