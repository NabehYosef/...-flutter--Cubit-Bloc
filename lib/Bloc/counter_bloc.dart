import 'package:bloc_testapp/Bloc/counter_event.dart';
import 'package:bloc_testapp/Bloc/counter_statestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc
    extends
        Bloc<
          CounterEvent,
          CounterStateState
        > {
  CounterBloc()
    : super(CounterIntialState(0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        if (state.counter == 2) {
          throw Exception("Error ex");
        }
        emit(
          IncrementState(
            state.counter + 1,
          ),
        );
      } else if (event
          is DecrementEvent) {
        emit(
          DecrementState(
            state.counter - 1,
          ),
        );
      }
    });
  }
}
