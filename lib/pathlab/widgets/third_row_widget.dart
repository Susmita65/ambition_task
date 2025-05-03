import 'package:flutter/material.dart';

class ThirdRowWidget extends StatelessWidget {
  const ThirdRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Each Item
          for (var item in [
            {
              'image': 'assets/images/microscope_bg.png',
              'text1': 'Safe and',
              'text2': 'Approved Labs',
            },
            {
              'image': 'assets/images/report_bg.png',
              'text1': 'Report on',
              'text2': 'Finger Tips',
            },
            {
              'image': 'assets/images/stethescope_bg.png',
              'text1': 'Home Sample',
              'text2': 'Collection',
            },
          ])
            Expanded(
              child: Container(
                width: 100,
                height: 130,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        item['image']!,
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      item['text1']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      item['text2']!,
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
