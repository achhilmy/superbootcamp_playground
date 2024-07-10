import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  double positionLeft = 0;
  double positionTop = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Animated Positioned'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
                child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      top: positionTop,
                      left: positionLeft,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Animated Positioned',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      duration: Duration(seconds: 2))
                ],
              ),
            )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    positionLeft = Random().nextInt(400).toDouble();
                    positionTop = Random().nextInt(400).toDouble();
                  });
                },
                child: Text('Animated Positioned'))
          ],
        ),
      ),
    );
  }
}
