import 'package:flutter/material.dart';

class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),

      child: Row(
        children: [
          // Left: Text Column
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Get Tested at",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  "Convenience meets care,get tested at \n home today.With just a click,wellness\n is on its way.",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 14),
                Text(
                  "Explore Package ->",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          //Right Image
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/doctorimage.png",
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
