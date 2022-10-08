import 'package:coba_riverpod/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends StateNotifier<int> {
  static const _initValue = 0;
  Counter() : super(_initValue);

  void increment() {
    state++;
  }
}

// final counterProvider = StateNotifierProvider<Counter, int>(
//   (_) => Counter(),
// );

enum ProductSortType {
  name,
  price,
}

final products = <Product>[
  const Product(name: "Topi", price: 500),
  const Product(name: "Celana", price: 1500),
  const Product(name: "Baju", price: 1000),
];

final productsProvider = StateProvider<List<Product>>(
  (ref) {
    final productSortP = ref.watch(productSortTypeProvider);
    switch (productSortP) {
      case ProductSortType.name:
        products.sort((a, b) => a.name.compareTo(b.name));
        return products;
      case ProductSortType.price:
        products.sort((a, b) => a.price.compareTo(b.price));
        return products;
    }
  },
);

final productSortTypeProvider = StateProvider<ProductSortType>(
    (_) => ProductSortType.name,
    name: "product-sort-type");
