import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:superbootcamp_flutter/logic/drawer_bloc/drawer_bloc.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(child: BlocBuilder<DrawerBloc, DrawerState>(
      builder: (context, state) {
        return ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.white)),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                print('item 1');
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                print('item 2');
                // Navigator.pop(context);
              },
            )
          ],
        );
      },
    ));
  }
}
