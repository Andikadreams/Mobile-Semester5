import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedValue = 'Anton'; // Use the late keyword to indicate that it will be initialized later

  final List<String> data = [
    "Anton",
    "Setiawan",
    "Jodi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Andika Ainur Wibowo 2141720238"),
        centerTitle: true,
      ),
      body: Center(
        child: DropdownButton(
          hint: Text("Pilih..."),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString(); // Convert value to String
            });
            print(value);
          },
          items: data
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
