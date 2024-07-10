import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  /// set opacity 1
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Animated Opacity'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 2),
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(16),
                child: Text(
                  'Animated Opacity',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacity = Random().nextDouble();
                  });
                },
                child: Text('Animated Opacity'))
          ],
        ),
      ),
    );
  }
}
