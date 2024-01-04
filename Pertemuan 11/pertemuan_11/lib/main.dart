import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
              onChanged: (value) {
                print(value);
              },
              items: data
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList()),
        ));
  }
}
