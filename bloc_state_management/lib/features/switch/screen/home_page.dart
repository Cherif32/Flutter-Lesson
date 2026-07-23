import 'package:bloc_state_management/features/switch/bloc/switch_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: BlocBuilder<SwitchBloc, SwitchState>(
        builder: (context, state) {
          final bloc = context.read<SwitchBloc>();
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 200, width: 200, color:state.isSwitched? Colors.red:Colors.black),
                  SizedBox(height: 20),
                  Switch(
                    value: state.isSwitched,
                    onChanged: (val) {
                      bloc.add(ToggleSwitchEvent(switchMe: val));
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
