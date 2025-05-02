part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterLoading extends CounterState {}

final class CounterChangeState extends CounterState {
  final int count;
  CounterChangeState({this.count = 0});
}
