import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/counter.dart';

class BodyPage extends ConsumerWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsP = ref.watch(productsProvider);
    return ListView.builder(
      itemCount: productsP.length,
      itemBuilder: (_, idx) {
        final product = productsP[idx];
        return ListTile(
          title: Text(product.name),
          subtitle: Text(
            product.price.toString(),
          ),
        );
      },
    );
  }
}
