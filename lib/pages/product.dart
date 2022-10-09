import 'dart:developer';

import 'package:coba_riverpod/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product2.dart';

class ProductPage extends ConsumerWidget {
  final Product2 product;
  final StateProvider<int> quantity;
  const ProductPage({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    log("masukk");
    return Container(
      color: Colors.grey,
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(product.name),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(quantity.notifier)
                        .update((state) => state - 1);
                  },
                  child: const Text("-"),
                ),
                TextInc(quantity: quantity),
                ElevatedButton(
                  onPressed: () {
                    ref
                        .read(quantity.notifier)
                        .update((state) => state + 1);
                  },
                  child: const Text("+"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextInc extends ConsumerWidget {
  final StateProvider<int> quantity;
  const TextInc({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(ref.watch<int>(quantity).toString()),
    );
  }
}
