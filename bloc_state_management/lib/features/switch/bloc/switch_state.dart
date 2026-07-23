// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'switch_bloc.dart';

class SwitchState extends Equatable {
  final bool isSwitched;


  const SwitchState({this.isSwitched = false});

  SwitchState copyWith({bool? isSwitched}) {
    return SwitchState(isSwitched: isSwitched ?? this.isSwitched);
  }
  
  @override
  List<Object?> get props => [isSwitched];

}
