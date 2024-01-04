import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tugas minggu ketiga'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String buttonText = 'Reload'; // Teks awal tombol

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Fungsi untuk mengeksekusi tindakan reload
  void _reload() {
    setState(() {
      // Mereset _counter menjadi 0
      _counter = 0;
      // Mengubah teks tombol kembali menjadi 'Reload'
      buttonText = 'Reload';
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background.png'), // Sesuaikan jalur gambar Anda
            fit: BoxFit.cover, // Sesuaikan untuk memenuhi layar
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    100), // Mengatur border radius sesuai keinginan Anda
                child: Image.asset(
                  'assets/Foto.jpg',
                  width: 190,
                  height: 190,
                ),
              ),
              const Text(
                'Andika Ainur Wibowo',
                style: TextStyle(
                  fontSize: 24, // Ukuran font
                  fontWeight: FontWeight.bold, // Ketebalan font
                  color: Colors.red, // Warna teks
                ),
              ),
              const Text(
                '2141720238',
                style: TextStyle(
                  fontSize: 18, // Ukuran font
                  color: Colors.deepOrange, // Warna teks
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 10.0,
            left: 45.0,
            child: FloatingActionButton(
              onPressed: _reload,
              tooltip: 'Reload',
              child: const Icon(Icons.refresh),
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 160.0,
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
