import 'package:flutter/material.dart';

final mainColor = Color(0xFF322e59);
final fontColor = Color(0xFFbab9ce);
final buttonsColor = Color(0xFFbab8d0);

class FilterPageExample extends StatelessWidget {
  const FilterPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FilterPage(),
    );
  }
}

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

enum Choices { choice1, choice2, choice3 }

class _FilterPageState extends State<FilterPage> {
  Choices? _choice = Choices.choice1;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:   Colors.deepPurple,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ColoredBox(
          color: mainColor,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Filter",
                      style: TextStyle(fontSize: 50, color: fontColor),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close, color: fontColor),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  "SEARCH BY KEYWORD",
                  style: TextStyle(fontSize: 20, color: fontColor),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: fontColor),
                      filled: true,

                      fillColor: Color(0xFF242046),
                      prefixIconColor: fontColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Search jobs",

                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "View",
                  style: TextStyle(fontSize: 30, color: fontColor),
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Radio<Choices>(
                        value: Choices.choice1,
                        groupValue: _choice,
                        activeColor: buttonsColor,
                        onChanged: (Choices? value) {
                          setState(() {
                            _choice = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'All job posts',
                      style: TextStyle(fontSize: 20, color: fontColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,

                      child: Radio<Choices>(
                        value: Choices.choice2,
                        groupValue: _choice,
                        activeColor: buttonsColor,
                        onChanged: (Choices? value) {
                          setState(() {
                            _choice = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Active job posts',
                      style: TextStyle(fontSize: 20, color: fontColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Radio<Choices>(
                        activeColor: buttonsColor,
                        value: Choices.choice3,
                        groupValue: _choice,
                        onChanged: (Choices? value) {
                          setState(() {
                            _choice = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Archive job Posts',
                      style: TextStyle(fontSize: 20, color: fontColor),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Include",
                  style: TextStyle(fontSize: 30, color: fontColor),
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.4,

                      child: Checkbox(
                        fillColor: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return buttonsColor;
                          }
                          return null;
                        }),
                        checkColor: Colors.deepPurple,

                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Jobs shared with me',
                      style: TextStyle(fontSize: 20, color: fontColor),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                SizedBox(
                  height: 60,
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      backgroundColor: Color(0xfFffbb57),
                    ),
                    child: Text(
                      "Save Changes",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
