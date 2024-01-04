import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Fluter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Andika Ainur Wibowo 2141720238'),
          centerTitle: true,
          titleSpacing: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.black,
          // margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 264,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                  width: double.infinity,
                  height: 242,
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])),
              Container(
                  width: double.infinity,
                  height: 242,
                  child: Row(children: [
                    Expanded(
                      child: Container(
                        color: Colors.purpleAccent,
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.bold, 
                              color: Colors.white,
                            ),
                          ),
                      ),
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
