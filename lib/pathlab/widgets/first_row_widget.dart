import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Package and Test",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        SizedBox(width: 10),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
      ],
    );
  }
}
