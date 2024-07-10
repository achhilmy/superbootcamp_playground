part of 'pages.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final TextEditingController? nameController = TextEditingController();

  void initState() {
    super.initState();
    goToAuth();
  }

  Future<void> goToAuth() async {
    await Future.delayed(Duration(seconds: 3), () {
      context.goNamed(RouteNames.halaman1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Halaman Splash",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 1,
              // width: MediaQuery.of(context).size.width / 1,
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: nameController,
                  ),
                  Image.asset('assets/images/logo.jpeg'),
                  SizedBox(
                      height: 45,
                      width: 45,
                      child: CircularProgressIndicator()),
                  Text('Loading . . .')
                ],
              )),
        ));
  }
}
