import 'package:demo_of_provider/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Management Using Provider")),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (ctx, _, __) {
            return Text('${ctx.watch<CounterProvider>().Count}');
          },
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().incrementCount(2);
              },
              child: Text("Increment"),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: FloatingActionButton(
              onPressed: () {
                context.read<CounterProvider>().decrementCount();
              },
              child: Text("Decrement"),
            ),
          ),
        ],
      ),
    );
  }
}
