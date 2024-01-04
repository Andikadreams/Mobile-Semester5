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
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          color: Colors.black,
          child: Column(
            children: [
              // Expanded(
              //   child: Container(color: Colors.orange,),
              // ),
              Expanded(
                child: Container(
                // padding: const EdgeInsets.all(20),
                // color: Colors.black,
                // margin: const EdgeInsets.all(20),
                // width: 100,
                // height: 200,
                color: Colors.red,
              )),
              Expanded(
                child: Container(
                // width: 100,
                // height: 200,
                color: Colors.white,
              )
              ),
              // Expanded(child: Container(
              //   color: Colors.blue,
              // ))
              // Text('merah'),
              // Text('biru'),
            ],
          ),
        ),
      ),
    );
  }
}
