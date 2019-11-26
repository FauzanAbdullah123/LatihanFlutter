import 'package:flutter/material.dart';
import 'pages/hal1.dart';
import 'pages/hal2.dart';
import 'pages/hal3.dart';
import 'pages/hal4.dart';
import 'pages/hal5.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    routes: {
      '/': (context) => Awal(),
      '/pages/hal1': (context) => FirstScreen(),
      '/pages/hal2': (context) => SecondScreen(),
      '/pages/hal3': (context) => ThirdScreen(),
      '/pages/hal4': (context) => FourthScreen(),
      '/pages/hal5': (context) => FifthScreen(),
    },
  ));
}

class Awal extends StatelessWidget {
  const Awal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Named Routes Demo"),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "Page 1",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushNamed(context, '/pages/hal1');
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Page 2",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.deepPurple,
                    onPressed: () {
                      Navigator.pushNamed(context, '/pages/hal2');
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Page 3",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, '/pages/hal3');
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Page 4",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.lightBlue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/pages/hal4');
                    },
                  ),
                  RaisedButton(
                    child: Text(
                      "Page 5",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.teal,
                    onPressed: () {
                      Navigator.pushNamed(context, '/pages/hal5');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
