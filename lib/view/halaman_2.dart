part of 'pages.dart';

class Halaman2pages extends StatelessWidget {
  const Halaman2pages({
    super.key,
    required this.angka,
  });

  final int angka;
  // final String username;

  @override
  Widget build(BuildContext context) {
    print(angka);
    return Scaffold(
      appBar: AppBar(
        title: Text('Halmaan 2'),
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     // Navigator.pop(context);
        //     print("Kembali lagi");
        //   },
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Halaman 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
