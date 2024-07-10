part of 'counter_bloc.dart';

@immutable
class CounterState extends Equatable {
  final int hasil;
  const CounterState({required this.hasil});

  @override
  List<Object> get props => [hasil];
}
