import 'package:flutter/material.dart';

class Linearloaderutil extends StatelessWidget {
  const Linearloaderutil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}
