import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FourthRowWidget extends StatefulWidget {
  const FourthRowWidget({super.key});

  @override
  State<FourthRowWidget> createState() => _FourthRowWidgetState();
}

class _FourthRowWidgetState extends State<FourthRowWidget> {
  bool isChecked = false; // Initialize as nullable bool for null safety

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Get a Call Back in", style: TextStyle(fontSize: 20)),
              SizedBox(width: 3),
              Text("10", style: TextStyle(color: Colors.blue, fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text(
                "minutes",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
              SizedBox(width: 3),
              Text("or call", style: TextStyle(fontSize: 20)),
              SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle: TextStyle(fontSize: 16),
                  backgroundColor: Colors.blue[50],
                  // Button color
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 16),
                    Text(
                      "+977 1 5970147",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Fill in your details,and our health expert will reach\n out to you shortly.",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          Text("Full Name"),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter full name ",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Text("Mobile Number"),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter mobile number ",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const SizedBox(width: 10),
              const Text(
                'I have prescription ',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              print("Submit Button Pressed:");
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 200, vertical: 12),
              textStyle: TextStyle(fontSize: 16),
              backgroundColor: Colors.blue, // Button color
            ),
            child: Text("Submit", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
