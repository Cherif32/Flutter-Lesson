import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<InitialSwitchEvent>(_onInitialSwitchEvent);
    on<ToggleSwitchEvent>(_onToggleSwitchEvent);
  }

  void _onInitialSwitchEvent(
    InitialSwitchEvent event,
    Emitter<SwitchState> emit,
  ) {
    emit(state.copyWith(isSwitched: false));
  }

  void _onToggleSwitchEvent(
    ToggleSwitchEvent event,
    Emitter<SwitchState> emit,
  ) {
    emit(state.copyWith(isSwitched: event.switchMe));
  }
}
