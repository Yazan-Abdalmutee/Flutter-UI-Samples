import 'package:flutter/material.dart';

class PayPageDemo extends StatelessWidget {
  const PayPageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PayPageSample(),
    );
  }
}

class PayPageSample extends StatefulWidget {
  const PayPageSample({super.key});

  @override
  State<PayPageSample> createState() => _PayPageSampleState();
}

class _PayPageSampleState extends State<PayPageSample> {
  int isChecked = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
        child: Column(
          children: [
            Text(
              "Try Free For 4 Weeks",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Color(0xFF0D0D4B),
                fontFamily: "Somar",
              ),
            ),
            Text(
              "we uncover the facts around the",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0D0D4B),
                fontFamily: "Somar",
              ),
            ),
            Text(
              "clock, all over the globe.",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF0D0D4B),
                fontFamily: "Somar",
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: (isChecked == 1) ? Colors.blue : Colors.grey,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return Color(0xFF0D0D4B);
                          }
                          return null;
                        }),
                        checkColor: Colors.white,
                        shape: CircleBorder(),
                        value: isChecked == 1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = 1;
                          });
                        },
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Monthly", style: TextStyle(fontFamily: "Somar")),
                        SizedBox(height: 5),

                        Text(
                          "4 weeks for free",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Somar",
                          ),
                        ),
                        SizedBox(height: 5),

                        Text(
                          "Then 3\$ every month for the first year",
                          style: TextStyle(fontFamily: "Somar"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: (isChecked == 2) ? Colors.blue : Colors.grey,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return Color(0xFF0D0D4B);
                          }
                          return null;
                        }),
                        checkColor: Colors.white,
                        shape: CircleBorder(),
                        value: isChecked == 2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = 2;
                          });
                        },
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: ColoredBox(
                            color: Color(0xE50600E8),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                              child: Text(
                                "Best Value",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Somar",
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Yearly", style: TextStyle(fontFamily: "Somar")),
                        SizedBox(height: 5),

                        Text(
                          "4 weeks for free",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Somar",
                          ),
                        ),
                        SizedBox(height: 5),

                        Text(
                          "Then 30\$ for the first year",
                          style: TextStyle(fontFamily: "Somar"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 220,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Color(0xFF0D0D4B)),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: "Somar",
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 220,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Continue with",
                      style: TextStyle(
                        color: Color(0xFF0D0D4B),
                        fontFamily: "Somar",
                      ),
                    ),
                    Icon(Icons.paypal_outlined, color: Colors.indigo),
                    Text(
                      "Pay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                        fontFamily: "Somar",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "pal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontFamily: "Somar",
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Text(
                "View more offers",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Somar",
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
