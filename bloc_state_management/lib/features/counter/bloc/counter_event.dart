part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {
  const CounterEvent();

  @override
  List<Object?> get props => [];
}

class InitialCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class ResetCounterEvent extends CounterEvent {}


