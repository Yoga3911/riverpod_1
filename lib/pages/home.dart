import 'dart:developer';

import 'package:coba_riverpod/pages/dropdown.dart';
import 'package:flutter/material.dart';

import 'body_page.dart';

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
      // floatingActionButton: const FabBtn(),
      body: const BodyPage(),
    );
  }
}
