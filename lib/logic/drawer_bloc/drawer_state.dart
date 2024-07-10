part of 'drawer_bloc.dart';

@immutable
sealed class DrawerState {
  const DrawerState();

  @override
  List<Object> get props => [];
}

final class DrawerInitial extends DrawerState {
  @override
  List<Object> get props => [];
}

class DrawerOpen extends DrawerState {
  @override
  List<Object> get props => [];
}

class DrawerClose extends DrawerState {
  @override
  @override
  List<Object> get props => [];
}
