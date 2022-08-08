import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.pop(),
            child: const Text("Back to home with context.pop()"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Back to home with Navigator.pop(context)"),
          ),
        ],
      ),
    );
  }
}
