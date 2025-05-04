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
  int checkedCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              createCard(
                false,
                "monthly",
                "Then 3\$ every month for the first year",
                "4 weeks for free",
                1,
              ),
              SizedBox(height: 20),
              createCard(
                true,
                "Yearly",
                "Then 30\$ for the first year",
                "4 weeks for free",
                2,
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 220,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF0D0D4B),
                  ),
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
      ),
    );
  }

  Widget createCard(
    bool showTag,
    String subscriptionDuration,
    String description,
    String priceDescription,
    int currentIndex,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: (checkedCard == currentIndex) ? Colors.blue : Colors.grey,
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
                value: checkedCard == currentIndex,
                onChanged: (bool? value) {
                  setState(() {
                    checkedCard = currentIndex;
                  });
                },
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                showTag == true
                    ? ClipRRect(
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
                    )
                    : SizedBox(),
                SizedBox(height: 5),
                Text(
                  subscriptionDuration,
                  style: TextStyle(fontFamily: "Somar"),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Somar",
                  ),
                ),
                SizedBox(height: 5),
                Text(priceDescription, style: TextStyle(fontFamily: "Somar")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
