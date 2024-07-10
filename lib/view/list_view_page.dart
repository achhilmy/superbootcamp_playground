part of 'pages.dart';

class ListViewPages extends StatelessWidget {
  ListViewPages({super.key});

  final List? data = [
    {"id": "1", "name": "achmad", "address": "surabaya", "status": 1},
    {"id": "2", "name": "hilmy", "address": "surabaya", "status": 0},
    {"id": "3", "name": "firdaus", "address": "surabaya", "status": 0},
    {"id": "4", "name": "muhammad", "address": "surabaya", "status": 0},
    // {"id": "5", "name": "achmad23", "address": "surabaya"},
    // {"id": "6", "name": "achmad5", "address": "surabaya"},
    // {"id": "1", "name": "achmad", "address": "surabaya"},
    // {"id": "2", "name": "hilmy", "address": "surabaya"},
    // {"id": "3", "name": "firdaus", "address": "surabaya"},
    // {"id": "4", "name": "muhammad", "address": "surabaya"},
    // {"id": "5", "name": "achmad23", "address": "surabaya"},
    // {"id": "6", "name": "achmad5", "address": "surabaya"},
    // {"id": "1", "name": "achmad", "address": "surabaya"},
    // {"id": "2", "name": "hilmy", "address": "surabaya"},
    // {"id": "3", "name": "firdaus", "address": "surabaya"},
    // {"id": "4", "name": "muhammad", "address": "surabaya"},
    // {"id": "5", "name": "achmad23", "address": "surabaya"},
    // {"id": "6", "name": "achmad5", "address": "surabaya"},
    // {"id": "1", "name": "achmad", "address": "surabaya"},
    // {"id": "2", "name": "hilmy", "address": "surabaya"},
    // {"id": "3", "name": "firdaus", "address": "surabaya"},
    // {"id": "4", "name": "muhammad", "address": "surabaya"},
    // {"id": "5", "name": "achmad23", "address": "surabaya"},
    // {"id": "6", "name": "achmad5", "address": "surabaya"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman listview",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: SafeArea(
          child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    print(data?[index]['id']);
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text(data?[index]['name']),
                    subtitle: Row(
                      children: [
                        data?[index]['status'] == 1
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : Text(""),
                        Text(data?[index]['address']),
                      ],
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                );
              })),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: ),
    );
  }
}
