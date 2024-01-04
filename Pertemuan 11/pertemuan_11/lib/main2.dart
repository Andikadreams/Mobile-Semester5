import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar:  AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Celcius',
                  hintText: 'Masukkan Angka Temperatur dalam celcius',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DropdownButton(
                isExpanded: true,
                value: 'Reamur',
                // padding: EdgeInsets.all(20),
                items: [
                  DropdownMenuItem(
                    child: Text('Reamur'),
                    value: 'Reamur',
                  ),
                  DropdownMenuItem(
                    child: Text('Kelvin'),
                    value: 'Kelvin',
                  ),
                  DropdownMenuItem(
                    child: Text('Fahrenheit'),
                    value: 'Fahtrenheit',
                  ),
                ],
                onChanged: (value) {},
              ),
              Text('Hasil'),
              Text('365'),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {}, child: Text('Konversi Suhu'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
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
