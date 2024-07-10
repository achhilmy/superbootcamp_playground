part of 'drawer_bloc.dart';

@immutable
sealed class DrawerEvent {}

class OpenDrawer extends DrawerEvent {
  @override
  List<Object> get props => [];
}

class CloseDrawer extends DrawerEvent {
  @override
  List<Object> get props => [];
}
