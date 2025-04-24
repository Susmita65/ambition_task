import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lifecycle extends StatefulWidget {
  @override
  _LifecycleState createState() {
    debugPrint("Create State"); //state is created
    return _LifecycleState();
  }
}

class _LifecycleState extends State<Lifecycle> {
  @override
  void initState() {
    super.initState();
    debugPrint(
      "Init State",
    ); //// Initialize things like animationController, fetching data
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint(
      "Did Change Dependencies",
    ); // // Called after initState and when InheritedWidgets change
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Build"); // // UI rendering happens here
    return Scaffold(body: Center(child: Text("This is build lifecycle"))); //
  }

  @override
  void didUpdateWidget(covariant Lifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("Did Update Widget"); //called when widget config changes
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("Deactive"); //called when temporarily removed
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("Dispose"); // called when clean up resources permanently
  }
}
