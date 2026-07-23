// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'my_form_bloc.dart';

class MyFormState extends Equatable {
  final bool toggleMe;
  final bool checkMe;

  const MyFormState({this.toggleMe = true, this.checkMe = false});

  MyFormState copyWith({bool? toggleMe, bool? checkMe}) {
    return MyFormState(
      toggleMe: toggleMe ?? this.toggleMe,
      checkMe: checkMe ?? this.checkMe,
    );
  }

  @override
  List<Object?> get props => [toggleMe, checkMe];
}
