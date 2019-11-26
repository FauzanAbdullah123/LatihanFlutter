import 'package:flutter/material.dart';

void main() => runApp(BelajarContainer());

class BelajarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Container",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Container"),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: <Color>[Colors.orange, Colors.red]),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: <Color>[Colors.blue, Colors.green]),
              ),
              child: Center(
                child: Text('Welcome to Flutter'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Belajar Kolom dan Baris",
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Belajar Column & Row'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Text 1'),
              Text('Text 2'),
              Text('Text 3'),
              Text(''),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Row 1 | '),
                  Text('Row 2 | '),
                  Text('Row 3 | '),
                ],
              ),
            ],
          ),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
