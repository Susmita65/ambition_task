import 'package:demo_of_provider/bloc/counter/page/counter_page.dart';
import 'package:demo_of_provider/bloc/api/page/api_display_page.dart';
import 'package:demo_of_provider/pathlab/navigation/navigation_logic.dart';
import 'package:demo_of_provider/provider/api/api_provider.dart';
import 'package:demo_of_provider/provider/counter/counter_provider.dart';
import 'package:demo_of_provider/provider/api/page/api_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ApiProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NavigationLogic(),
    );
  }
}
