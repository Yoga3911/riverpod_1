import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/counter.dart';

class MyDropDown extends ConsumerWidget {
  const MyDropDown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton(
      value: ref.watch(productSortTypeProvider),
      items: const [
        DropdownMenuItem(
          value: ProductSortType.name,
          child: Icon(
            Icons.sort_by_alpha,
            color: Colors.black,
          ),
        ),
        DropdownMenuItem(
          value: ProductSortType.price,
          child: Icon(
            Icons.sort,
            color: Colors.black,
          ),
        ),
      ],
      onChanged: (val) {
        ref.read(productSortTypeProvider.notifier).update(
              (state) => state = val!,
            );
      },
    );
  }
}
