import 'dart:developer';
import 'package:demo_of_provider/cubit/counter/cubit/counter_cubit.dart';
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
      appBar: AppBar(title: Text("State Management Using Cubit")),
      body: Center(
        child: BlocProvider(
          create: (context) => CounterCubit(),
          child: BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              int count = 0;
              bool isLoading = false;
              if (state is CounterLoading) {
                isLoading = true;
                // return const Center(child: CircularProgressIndicator());
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
                                ? null // Disable while loading
                                : () =>
                                    context.read<CounterCubit>().increment(),
                        child: Text("Increment"),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed:
                            isLoading
                                ? null // Disable while loading
                                : () =>
                                    context.read<CounterCubit>().decrement(),
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
