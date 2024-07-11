part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Navigation with cubit'),
      //   backgroundColor: Colors.purple,
      // ),
      // drawer: const DrawerPage(),
      body: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          switch (state.index) {
            case 0:
              return const Halaman1pages();
            case 1:
              return ListViewPages();
            case 2:
              return const ThirdPartyPage();
            case 3:
              return ListViewPages();
            default:
              return const Halaman1pages();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: context.watch<BottomNavCubit>().state.index,
        onTap: (value) {
          context.read<BottomNavCubit>().navigateTo(index: value);
          print(value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "ListView"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "ListView"),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
