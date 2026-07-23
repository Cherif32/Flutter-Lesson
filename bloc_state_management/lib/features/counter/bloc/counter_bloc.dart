import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<InitialCounterEvent>(_onInitialCounterEvent);
    on<IncrementCounterEvent>(_onIncrementCounterEvent);
    on<DecrementCounterEvent>(_onDecrementCounterEvent);
    on<ResetCounterEvent>(_onResetCounterEvent);
  }

  void _onInitialCounterEvent(
    InitialCounterEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(state.copyWith(counter: 0));
  }

  void _onIncrementCounterEvent(
    IncrementCounterEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _onDecrementCounterEvent(
    DecrementCounterEvent event,
    Emitter<CounterState> emit,
  ) {
       emit(state.copyWith(counter: state.counter - 1));
  }

  void _onResetCounterEvent(
    ResetCounterEvent event,
    Emitter<CounterState> emit,
  ) {
       emit(state.copyWith(counter: 0));
  }
}
