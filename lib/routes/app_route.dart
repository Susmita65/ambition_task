import 'package:ambition/EvenOdd/page/even_odd_page.dart';
import 'package:ambition/Loops/page/loop_page.dart';
import 'package:ambition/PositiveNegative/page/positive_negative_page.dart';
import 'package:ambition/PrintFruits/page/print_fruits_page.dart';
import 'package:ambition/Sum/page/sum_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Map<String, WidgetBuilder> routes = {
    "/": (context) => EvenOddPage(),
    "/sum": (context) => SumPage(),
    "/loop": (context) => LoopPage(),
    "/posneg": (context) => PositiveNegativePage(),
    "/fruits": (context) => PrintFruitsPage(),
  };
}
