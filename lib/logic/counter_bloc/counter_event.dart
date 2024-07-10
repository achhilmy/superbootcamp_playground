part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

/// event untuk perubahan

class CounterTambah extends CounterEvent {
  final int nilaiTambah;
  const CounterTambah({required this.nilaiTambah});

  @override
  List<Object> get props => [nilaiTambah];
}

class CounterKurang extends CounterEvent {}
