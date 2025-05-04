import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 480,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 60, 8, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yazan Shrouf",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Junior Flutter Developer",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xAD1B1A1A),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "I am a Computer Engineering graduate from Birzeit University",
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Chip(label: Text("Flutter")),
                            SizedBox(width: 10),
                            Chip(label: Text("Dart")),
                            SizedBox(width: 10),
                            Chip(label: Text("My SQL")),
                            SizedBox(width: 10),
                            Chip(label: Text("Java")),
                            SizedBox(width: 10),
                            Chip(label: Text("Python")),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: Text(
                              "Message",
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Colors.black),
                              backgroundColor: Colors.white,
                            ),
                            child: Text(
                              "Follow",

                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 90,
              top: 80,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://t3.ftcdn.net/jpg/03/35/34/80/360_F_335348056_yY8QyHP966KePjyutnns1Puwt2bnngZc.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
