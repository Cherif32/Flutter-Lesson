import 'package:bloc_state_management/features/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home screen')),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          final bloc = context.read<CounterBloc>();
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${state.counter}",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            bloc.add(DecrementCounterEvent());
                          },
                          child: Container(
                            height: 70,
                            child: Icon(Icons.remove, color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            bloc.add(IncrementCounterEvent());
                          },
                          child: Container(
                            height: 70,
                            child: Icon(Icons.add, color: Colors.white),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
              
                    ],
                  ),
                          SizedBox(height: 20,),
                       Align(
                        alignment: Alignment.center,
                         child: InkWell(
                            onTap: () {
                              bloc.add(ResetCounterEvent());
                            },
                            child: Container(
                              height: 70,
                              width: 300,
                              child: Icon(Icons.refresh, color: Colors.white),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
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
