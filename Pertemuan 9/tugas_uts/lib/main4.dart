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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Fluter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Andika Ainur Wibowo 2141720238'),
          centerTitle: true,
        ),
        body: Container(
          // margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                // width: double.infinity,
                // height: 200,
                child: Row(children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(20),
                    height: 1000,
                    width: 1200,
                    alignment: Alignment.center,
                    color: Colors.blue,
                    child:
                    Text("This is Text", style: TextStyle(fontSize: 30))
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(20),
                    height: 1000,
                    width: 1200,
                    alignment: Alignment.center,
                    color:Colors.blueGrey,
                    child: Icon(Icons.wallet_giftcard)
                  )),
                ]),
              ),
              Expanded(
                  // width: double.infinity,
                  // height: 200,
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.all(20),
                    height: 1000,
                    width: 1200,
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Image.network(
                        'data:image/jpeg;base64,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'),
                  )),
                ],
              )),
              Expanded(
                  // width: double.infinity,A
                  // height: 200,
                  child: Row(children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(20),
                        color: Colors.purpleAccent,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                child: Text("Select Date Picker"),
                              ),
                            ]))),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
