import 'package:flutter/material.dart';

class Pair extends StatelessWidget {
  const Pair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Text(
          'Pair',
          style: TextStyle(
            fontSize: 60,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
