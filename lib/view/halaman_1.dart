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
            Text(
              "Halaman 12",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: () => const Halaman2pages()));
                  // Navigator.pushNamed(context, "/second", arguments: 1);
                  // context.pushNamed('/page2');
                  // context.goNamed('/page2');
                  context.pushNamed(RouteNames.halaman2,
                      extra: {'angka': 1, 'username': 'achmad'});
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
