import 'package:demo_of_provider/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management Using Bloc")),
      body: Center(
        child: BlocProvider(
          create: (context) => CounterBloc(),
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              int count = 0;
              bool isLoading = false;

              if (state is CounterLoading) {
                isLoading = true;
              } else if (state is CounterChangeState) {
                count = state.count;
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isLoading
                      ? CircularProgressIndicator()
                      : Text("$count", style: TextStyle(fontSize: 40)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed:
                            isLoading
                                ? null
                                : () => context.read<CounterBloc>().add(
                                  IncrementCounter(),
                                ),
                        child: Text("Increment"),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed:
                            isLoading
                                ? null
                                : () => context.read<CounterBloc>().add(
                                  DecrementCounter(),
                                ),
                        child: Text("Decrement"),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
