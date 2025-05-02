import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int counter = 0; // Keep track separately
  CounterCubit() : super(CounterInitial());

  void increment() async {
    emit(CounterLoading());
    await Future.delayed(Duration(seconds: 2));
    counter++;
    emit(CounterChangeState(count: counter));
  }

  void decrement() async {
    emit(CounterLoading());
    await Future.delayed(const Duration(seconds: 2));
    counter--;
    // emit(CounterChangeState(count: (state as CounterChangeState).count - 1));
    emit(CounterChangeState(count: counter));
  }
}

//done from documentationmedium
class NextCounterCubit extends Cubit<int> {
  NextCounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}
