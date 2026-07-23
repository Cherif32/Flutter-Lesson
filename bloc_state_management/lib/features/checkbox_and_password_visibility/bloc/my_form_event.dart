part of 'my_form_bloc.dart';

@immutable
abstract class MyFormEvent extends Equatable {
  const MyFormEvent();

  @override
  List<Object?> get props => [];
}

class InitalEvent extends MyFormEvent {
  const InitalEvent();
  @override
  List<Object?> get props => [];
}

class ToggleEvent extends MyFormEvent {
  const ToggleEvent();
  @override
  List<Object?> get props => [];
}

class CheckEvent extends MyFormEvent {
  final bool isChecked;
  const CheckEvent({required this.isChecked});
  @override
  List<Object?> get props => [isChecked];
}
