import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: KonverterSuhu(),
      ),
    );
  }
}

class KonverterSuhu extends StatefulWidget {
  @override
  _KonverterSuhuState createState() => _KonverterSuhuState();
}

class _KonverterSuhuState extends State<KonverterSuhu> {
  String selectedUnit = 'Reamur'; // Track the selected unit

  final List<String> data = [
    "Reamur",
    "Kelvin",
    "Fahrenheit",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
            value: selectedUnit,
            items: data.map((unit) {
              return DropdownMenuItem(
                value: unit,
                child: Text(unit),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedUnit = value.toString();
              });
              print(selectedUnit);
            },
          ),
          Text('Hasil'),
          Text('365'),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Perform the temperature conversion based on the selected unit
                  },
                  child: Text('Konversi Suhu'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
