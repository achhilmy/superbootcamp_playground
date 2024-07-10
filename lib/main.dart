import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superbootcamp_flutter/logic/bottom_navbar_cubit/bottom_nav_cubit.dart';
import 'package:superbootcamp_flutter/logic/drawer_bloc/drawer_bloc.dart';
import 'package:superbootcamp_flutter/logic_provoider/bloc_provider.dart';
import 'package:superbootcamp_flutter/routes/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrawerBloc>(
          create: (_) => DrawerBloc(
              //BlocProvider.of<AuthenticationCubit>(context),
              ),
        ),
        BlocProvider<BottomNavCubit>(
          create: (_) => BottomNavCubit(
              //BlocProvider.of<AuthenticationCubit>(context),
              ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.shared.router,
        debugShowCheckedModeBanner: false,
        // home: RoutesApp(),
      ),
    );
  }
}
