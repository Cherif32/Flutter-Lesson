import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'my_form_event.dart';
part 'my_form_state.dart';

class MyFormBloc extends Bloc<MyFormEvent, MyFormState> {
  MyFormBloc() : super(MyFormState()) {
    on<InitalEvent>(_onInitalEvent);
    on<ToggleEvent>(_onToggleEvent);
    on<CheckEvent>(_onCheckEvent);
  }

  void _onInitalEvent(InitalEvent event, Emitter<MyFormState> emit) {
    emit(state.copyWith(toggleMe: false, checkMe: false));
  }

  void _onToggleEvent(ToggleEvent event, Emitter<MyFormState> emit) {
    emit(state.copyWith(toggleMe: !state.toggleMe));
  }

  void _onCheckEvent(CheckEvent event, Emitter<MyFormState> emit) {
    emit(state.copyWith(checkMe: event.isChecked));
  }
}
