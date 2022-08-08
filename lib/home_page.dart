import 'package:custom_transition_pop/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.pushNamed(normalTransitionPage),
            child: const Text("Normal transition"),
          ),
          ElevatedButton(
            onPressed: () => context.pushNamed(customTransitionPage),
            child: const Text("Custom transition"),
          ),
        ],
      ),
    );
  }
}
