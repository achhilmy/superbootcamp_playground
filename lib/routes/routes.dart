import 'package:flutter/material.dart';
import 'package:superbootcamp_flutter/view/pages.dart';

class RoutesApp extends StatelessWidget {
  const RoutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const CounterPage(),
        initialRoute: '/',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (_) => Halaman1pages());
            case '/second':
              final args = settings.arguments as int;
              return MaterialPageRoute(
                  builder: (_) => Halaman2pages(
                        angka: args,
                      ));
            case '/listview_page':
              return MaterialPageRoute(builder: (_) => ListViewPages());
            default:
              return MaterialPageRoute(builder: (_) => Halaman1pages());
          }
        });
  }
}
