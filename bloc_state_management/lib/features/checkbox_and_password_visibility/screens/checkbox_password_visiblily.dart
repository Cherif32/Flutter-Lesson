import 'package:bloc_state_management/features/checkbox_and_password_visibility/bloc/my_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckboxVisibility extends StatelessWidget {
  const CheckboxVisibility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: BlocBuilder<MyFormBloc, MyFormState>(
        builder: (context, state) {
          final bloc = context.read<MyFormBloc>();
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    obscureText: state.toggleMe,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      suffixIcon: IconButton(
                        onPressed: () {
                          bloc.add(ToggleEvent());
                        },
                        icon: Icon(
                          state.toggleMe
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        state.checkMe ? "Uncheck Me": "Check Me",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Checkbox(
                    value: state.checkMe,
                    onChanged: (val) {
                      bloc.add(CheckEvent(isChecked: val!));
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
