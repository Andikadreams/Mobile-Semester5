import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Praktikum',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Andika Ainur Wibowo 2141720238',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
              margin: const EdgeInsets.only(left: 350),
              // margin: const EdgeInsets.all(20),
              color: Colors.cyan,
              child: Column(
                children: [
                  //Row 1/2
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.all(20),
                      height: 1000,
                      width: 1000,
                      alignment: Alignment.center,
                      color: Colors.redAccent,
                      child: Text("Jam", style: TextStyle(fontSize: 30)))),
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.all(20),
                      height: 1000,
                      width: 1000,
                      alignment: Alignment.center,
                      color: Colors.blueAccent,
                      child: Icon(Icons.access_alarm))),
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.all(20),
                      height: 1000,
                      width: 1000,
                      alignment: Alignment.center,
                      color: Colors.orangeAccent,
                      child: Image.network(
                        'https://www.esdm.go.id/assets/imagecache/thumbnailMeta/arsip-berita-pvmbg-naikkan-status-gunung-slamet-jadi-waspada-ue5j9f2.jpg'),
                  )),
                ],
              )),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
