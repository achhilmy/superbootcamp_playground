import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

part 'drawer_event.dart';
part 'drawer_state.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc() : super(DrawerInitial()) {
    on<DrawerEvent>((event, emit) {
      if (event is OpenDrawer) {
        emit(DrawerOpen());
      } else if (event is CloseDrawer) {
        emit(DrawerClose());
      }
    });
  }
}
