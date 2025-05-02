import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<IncrementCounter>((event, emit) {
      emit(CounterLoading());
      counter++;
      emit(CounterChangeState(count: counter));
    });
    on<DecrementCounter>((event, emit) async {
      emit(CounterLoading());
      await Future.delayed(Duration(seconds: 2));
      counter--;
      emit(CounterChangeState(count: counter));
    });
  }
}
