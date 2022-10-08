import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'text_counter.dart';

class FabBtn extends ConsumerWidget {
  const FabBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(valCounter.notifier).update((state) => state + 1);
      },
      child: const Icon(Icons.add_rounded),
    );
  }
}
