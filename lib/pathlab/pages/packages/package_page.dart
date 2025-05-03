import 'package:flutter/material.dart';

class PackagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // // Title ma different color use garna xa vane RichText jastai yesma Health lai black ra Packages lai blue color garna xa
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Health",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: '   ', // Add spacing here
                  ),
                  TextSpan(
                    text: "Packages",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            //duita icon on right side
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                SizedBox(width: 6),
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
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
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/doctorwithpatient.png"),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.green,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                textStyle: TextStyle(fontSize: 16),
                                side: BorderSide(
                                  color: Colors.green,
                                ), // Green border
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ), // Optional rounded corners
                                ),
                                elevation: 0, // Optional: Remove shadow
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.label, color: Colors.green),
                                  SizedBox(width: 5),
                                  Text(
                                    "8 tests available",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.green[120],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.blue,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                textStyle: TextStyle(fontSize: 16),
                                side: BorderSide(
                                  color: Colors.blue,
                                ), // Green border
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    20,
                                  ), // Optional rounded corners
                                ),
                                elevation: 0, // Optional: Remove shadow
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.location_city, color: Colors.blue),
                                  SizedBox(width: 5),
                                  Text(
                                    "Locations",
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
                          "NPL Super स्वास्थ्य Package",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rs. 2000",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              "Book Now →",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.phone, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
