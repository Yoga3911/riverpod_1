import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final valCounter = StateProvider<int>((_) => 0);

class TextCounter extends ConsumerWidget {
  const TextCounter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int valueCounter = ref.watch(valCounter);
    return Center(child: Text(valueCounter.toString()));
  }
}
