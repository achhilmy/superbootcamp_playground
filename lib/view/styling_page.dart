part of 'pages.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Styling'),
      ),
      // body: SafeArea(
      //   child: Text('Halaman Styling'),
      // ),
    );
  }
}
