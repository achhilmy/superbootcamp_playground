import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<AnimatedContainerPage> {
  double height = 200;
  double width = 200;

  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Animated Container'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: height,
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: color),
              child: Center(
                child: Text(
                  'Animated Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final randomColor = Random().nextInt(Colors.primaries.length);

                  setState(() {
                    height = Random().nextInt(300).toDouble() + 100;

                    width = Random().nextInt(300).toDouble() + 100;

                    color = Colors.primaries[randomColor];
                  });
                },
                child: Text('Jalankan Animasi'))
          ],
        ),
      ),
    );
  }
}
