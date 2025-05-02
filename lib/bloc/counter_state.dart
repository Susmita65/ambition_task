part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterLoading extends CounterState {}

class CounterChangeState extends CounterState {
  final int count;
  CounterChangeState({this.count = 0});
}
