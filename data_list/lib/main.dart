import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetsdata = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar List View"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("Tambah"),
                  onPressed: () {
                    setState(() {
                      widgetsdata.add(Text("Data Ke-" + counter.toString()));
                      counter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Hapus"),
                  onPressed: () {
                    setState(() {
                      widgetsdata.removeLast();
                      counter--;
                    });
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgetsdata,
              ),
            )
          ],
        ),
      ),
    );
  }
}
