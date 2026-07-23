part of 'switch_bloc.dart';

@immutable
abstract class SwitchEvent {
  const SwitchEvent();

  @override
  List<Object?> get props => [];
}

class InitialSwitchEvent extends SwitchEvent {}

class ToggleSwitchEvent extends SwitchEvent {
  final bool switchMe;

  const ToggleSwitchEvent({required this.switchMe});

  @override
  List<Object?> get props => [switchMe];
}
