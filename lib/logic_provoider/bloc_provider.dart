import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superbootcamp_flutter/logic/bottom_navbar_cubit/bottom_nav_cubit.dart';
import 'package:superbootcamp_flutter/logic/drawer_bloc/drawer_bloc.dart';
import 'package:superbootcamp_flutter/view/pages.dart';

class BlocProviderPage extends StatelessWidget {
  const BlocProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (context) => DrawerBloc(), child: Halaman1pages()),
    );
  }
}
