import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // ignore: prefer_const_constructors
  CounterBloc() : super(const CounterState(hasil: 0)) {
    on<CounterTambah>((event, emit) {
      final penjumlahan = state.hasil + event.nilaiTambah;
      emit(CounterState(hasil: penjumlahan));
    });

    on<CounterKurang>((event, emit) {
      final penjumlahan = state.hasil - 1;
      emit(CounterState(hasil: penjumlahan));
    });
  }
}
