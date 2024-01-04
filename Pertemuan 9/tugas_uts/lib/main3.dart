import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Andika Ainur Wibowo 2141720238"),
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              selectDate.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                ).then((value) {
                  setState(() {
                    selectDate = value!;
                  });
                });
              },
              child: Text("Date Picker"),
            ),
          ]),
        ),
      ),
    );
  }
}
