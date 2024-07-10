import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(index: 0));

  void navigateTo({required int index}) {
    emit(BottomNavState(index: index));
  }
}
