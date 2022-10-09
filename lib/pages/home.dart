import 'dart:developer';

import 'package:coba_riverpod/pages/dropdown.dart';
import 'package:coba_riverpod/pages/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/product2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    log("Masuk");

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home_rounded),
        title: const Text("Riverpod"),
        centerTitle: true,
        actions: const [MyDropDown()],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (_, i) {
          return ProductPage(
            quantity: StateProvider((ref) => 0, name: "Index $i"),
            product: Product2(
              name: "Index $i",
              price: 0,
            ),
          );
        },
      ),
    );
  }
}
