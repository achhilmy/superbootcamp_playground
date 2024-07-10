part of 'pages.dart';

class Halaman1pages extends StatelessWidget {
  const Halaman1pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halmaan 1'),
      ),
      drawer: DrawerPage(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Halaman 12",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(RouteNames.mainPage);
                },
                child: Text('Menuju Halaman 2')),
            ElevatedButton(
                onPressed: () {
                  context.pop();
                  // Navigator.pushNamed(context, '/listview_page');
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
