part of 'pages.dart';

class ThirdPartyPage extends StatefulWidget {
  const ThirdPartyPage({super.key});

  @override
  State<ThirdPartyPage> createState() => _ThirdPartyPageState();
}

class _ThirdPartyPageState extends State<ThirdPartyPage> {
  @override
  void initState() {
    super.initState();
    print('Hello world');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Third party '),
      ),
      body: BlocBuilder<NewsApiBloc, NewsApiState>(
        builder: (context, state) {
          print(state.toString());
          if (state is NewsApiLoading) {
            return CircularProgressIndicator();
          }
          if (state is NewsApiError) {
            return Text("Error");
          }
          if (state is NewsApiLoaded) {
            List<NewsModel> newsModel = state.news;

            return Container(
              child: ListView.builder(
                  itemCount: newsModel.length,
                  itemBuilder: (context, index) {
                    final data = newsModel[index];
                    return ListTile(
                      leading: Text(data.title.toString()),
                    );
                  }),
            );
          }
          return Center();
        },
      ),
    );
  }
}
