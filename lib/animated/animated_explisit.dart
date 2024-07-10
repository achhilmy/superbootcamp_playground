import 'package:flutter/material.dart';

class AnimatedExplisitPage extends StatefulWidget {
  const AnimatedExplisitPage({super.key});

  @override
  State<AnimatedExplisitPage> createState() => _AnimatedExplisitPageState();
}

class _AnimatedExplisitPageState extends State<AnimatedExplisitPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  late Animation<Offset> offsetAnimation;

  Tween<Offset> tweenOffset =
      Tween<Offset>(begin: Offset(0, 59.0), end: Offset(0, 200.0));

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    offsetAnimation = tweenOffset.animate(
        CurvedAnimation(parent: _controller!, curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Explisit"),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 300,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: AnimatedBuilder(
              animation: offsetAnimation,
              builder: (context, child) {
                return Stack(
                  children: [
                    Positioned(
                        top: offsetAnimation.value.dy,
                        left: offsetAnimation.value.dx,
                        child: Icon(Icons.sports_basketball_rounded))
                  ],
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (offsetAnimation.isCompleted) {
                  _controller!.reverse();
                } else {
                  _controller!.forward();
                }
              },
              child: Text('Explisit Animation'))
        ],
      )),
    );
  }
}
