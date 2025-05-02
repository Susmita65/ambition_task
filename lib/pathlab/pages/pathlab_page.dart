import 'package:demo_of_provider/pathlab/navigation/custom_nav_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PathLabPage extends StatefulWidget {
  const PathLabPage({super.key});

  @override
  State<StatefulWidget> createState() => _PathLabPageState();
}

class _PathLabPageState extends State<PathLabPage> {
  int _selectedIndex = 0;
  bool isChecked = false; // Initialize as nullable bool for null safety
  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onTapped,
      ),
      //first row banauxu
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/images/logo.svg',
                width: 100,
                height: 70,
              ),
              SizedBox(height: 20),
              // Row(
              //   children: [
              //     Expanded(
              //       child: TextField(
              //         decoration: InputDecoration(
              //           hintText: "Search Package and Test",
              //           suffixIcon: Icon(Icons.search),
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(12),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
              //     SizedBox(width: 10),
              //     IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              //   ],
              // ),
              SizedBox(height: 20),
              //second row banauxu
              Container(
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
              ),

              SizedBox(height: 20),

              //third row ko
              Container(
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
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 4),
                            ],
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
              ),
              SizedBox(height: 20),

              //fourth row
              Container(
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
                        Text(
                          "Get a Call Back in",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "10",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
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
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
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
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
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
                        padding: EdgeInsets.symmetric(
                          horizontal: 200,
                          vertical: 12,
                        ),
                        textStyle: TextStyle(fontSize: 16),
                        backgroundColor: Colors.blue, // Button color
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
