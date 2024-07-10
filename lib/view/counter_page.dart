import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("+")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text("-"))
          ],
        ),
      ),
    );
  }
}
