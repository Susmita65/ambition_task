import 'package:demo_of_provider/pathlab/navigation/custom_nav_menu.dart';
import 'package:demo_of_provider/pathlab/widgets/first_row_widget.dart';
import 'package:demo_of_provider/pathlab/widgets/fourth_row_widget.dart';
import 'package:demo_of_provider/pathlab/widgets/second_row_widget.dart';
import 'package:demo_of_provider/pathlab/widgets/third_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PathLabPage extends StatefulWidget {
  const PathLabPage({super.key});

  @override
  State<StatefulWidget> createState() => _PathLabPageState();
}

class _PathLabPageState extends State<PathLabPage> {
  @override
  Widget build(BuildContext context) {
    // yesma Scaffold le wrap nagarne , Navigation logic chai main page ho so teslai chai wrap with scaffold garne ho
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          SvgPicture.asset('assets/images/logo.svg', width: 100, height: 70),
          SizedBox(height: 20),
          FirstRowWidget(),
          SizedBox(height: 20),
          SecondRowWidget(),
          SizedBox(height: 20),
          ThirdRowWidget(),
          SizedBox(height: 20),
          FourthRowWidget(),
        ],
      ),
    );
  }
}
