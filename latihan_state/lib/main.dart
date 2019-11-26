import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: ListView3(),
    ));

// 3. ListView Separated

class ListView3 extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter LisView"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

// 2. ListView Builder

class ListView2 extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

// 1. Contoh Dasar ListView

class ListView1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Cupcake"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Donus"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Eclair"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Froyo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Gingerbread"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Honeycomb"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Ice Cream Sandwich"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Kitkat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Lollipop"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Marshmallow"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Nougat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Oreo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Pie"),
          ),
        ],
      ),
    );
  }
}

// BELAJAR STATEFULLWIDGET

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;
  String tombol = "Tombol Ini Belum Ditekan";
  Color warnaBgcolor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Membuat StateFull")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // // Text(angka.toString()),
              RaisedButton(
                  child: Text("Tambah Bilangan"),
                  onPressed: () {
                    setState(() {
                      angka = angka + 1;
                    });
                  }),
              RaisedButton(
                  child: Text("Kurangi Bilangan"),
                  onPressed: () {
                    setState(() {
                      angka = angka - 1;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Ukuran Font Saat ini Adalah : " + angka.toString(),
                  style: TextStyle(fontSize: 10 + angka.toDouble()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // child: Text(tombol),
              ),
              // RaisedButton(
              //     child: Text("Tekan Tombol"),
              //     onPressed: () {
              //       setState(() {
              //         tombol = "Tombol Ini Sudah Ditekan";
              //       });
              //     }),
              MaterialButton(
                child: Text(tombol),
                colorBrightness: Brightness.dark,
                color: warnaBgcolor,
                onPressed: () {
                  setState(() {
                    warnaBgcolor = Colors.green;
                    tombol = "Sudah Ditekan";
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
