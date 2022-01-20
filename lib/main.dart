import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HitungLuas(),
    routes: <String, WidgetBuilder>{
      '/HitungLuas': (BuildContext context) => HitungLuas(),
      '/LuasPersegi': (BuildContext context) => LuasPersegi(),
      '/LuasLingkaran': (BuildContext context) => LuasLingkaran(),
      '/Profile': (BuildContext context) => Profile(),
    },
  ));
}

class HitungLuas extends StatelessWidget {
  const HitungLuas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text('Heading'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/LuasPersegi');
                },
                title: Text(
                  'HITUNG LUAS PERSEGI',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
                subtitle: Text('Pilih Untuk Mulai Menghitung Luas Persegi'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/LuasLingkaran');
                },
                title: Text(
                  'HITUNG LUAS LINGKARAN',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
                subtitle: Text('Pilih Untuk Mulai Menghitung Luas Lingkaran'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/Profile');
                },
                title: Text(
                  'PROFILE DEVELOPER',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Bemy'),
                ),
                subtitle: Text('Pilih Untuk Melihat Profile Developer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LuasPersegi extends StatefulWidget {
  _LuasPersegiState createState() => _LuasPersegiState();
}

class _LuasPersegiState extends State<LuasPersegi> {
  final panjangp = TextEditingController();
  final lebarp = TextEditingController();

  String result = '';
  getTextInputData() {
    setState(() {
      var panjang = int.parse(panjangp.text);
      var lebar = int.parse(lebarp.text);
      var luas = panjang * lebar;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Persegi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: panjangp,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Panjang'),
                  )),
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: lebarp,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Lebar'),
                  )),
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Klik'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Hasil Luas Persegi = $result",
                      style: TextStyle(fontSize: 20))),
            ],
          ),
        ));
  }
}

class LuasLingkaran extends StatefulWidget {
  _LuasLingkaranState createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  final jaril = TextEditingController();

  String result = '';

  getTextInputData() {
    setState(() {
      var jari = int.parse(jaril.text);
      var luas = jari * jari * 3.14;
      result = luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Lingkaran"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: jaril,
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Panjang Jari-Jari'),
                  )),
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.black,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Klik'),
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Hasil Luas Lingkaran = $result",
                      style: TextStyle(fontSize: 20)))
            ],
          ),
        ));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Developer"),
        backgroundColor: Colors.teal,
      ),
      body: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("NAMA : Lidya Lusiana",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bemy',
                    )),
                new Text("NPM : 2010020107",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bemy',
                    )),
                new Text("Kelas : 5A SI NonRegular Banjarmasin",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bemy',
                    )),
                new Text("Alamat : Jl. Raya Stagen KM. 5 Desa Sungai Taib",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bemy',
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
