import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget_card/periksa.dart';
//import 'package:widget_card/models/docter.dart';
//import 'package:widget_card/periksa.dart';
//import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// home
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("widget card"),
      ),
      body: ListView(
        children: [berobat(), Docter()],
      ),
    );
  }
}

// class berobat
class berobat extends StatelessWidget {
  const berobat({super.key});

  @override
  Widget build(BuildContext context) {
    var checkDate = new DateTime.now();

    return Column(
      children: [
        Container(
          height: 90,
          width: 336,
          child: builBerobat("tensi", "1.2/1.5 - 7.0 mg/dl", checkDate),
        ),
        Container(
          height: 90,
          width: 336,
          child: builBerobat("tensi", "1.2/1.5 - 7.0 mg/dl", checkDate),
        ),
        Container(
          height: 90,
          width: 336,
          child: builBerobat("tensi", "1.2/1.5 - 7.0 mg/dl", checkDate),
        ),
      ],
    );
  }

// card berobat
  Card builBerobat(String title, String subTitle, DateTime checkDate) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 16, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16)),
                ),
                Text(subTitle)
              ],
            ),
            Text("checkdate " + checkDate.toString())
          ],
        ),
      ),
    );
  }
}

// class docter
class Docter extends StatelessWidget {
  const Docter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
      child: Column(
        children: [
          Container(
            height: 64,
            width: 336,
            child: buidDokter("ulfah", 80),
          ),
          Container(
            height: 64,
            width: 336,
            child: buidDokter("farah", 67),
          ),
          Container(
            height: 64,
            width: 336,
            child: buidDokter("yudi", 90),
          ),
        ],
      ),
    );
  }

// card dokter
  Card buidDokter(String text, int umur) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: ClipRect(
                    child: Text(
                      text[0],
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(text), Text(umur.toString())],
            ),
          ],
        ),
      ),
    );
  }
}
// yg clas berobat height 90 gak bisa 80 blm tau kenapa
// ini gua pake widget column
// kalo mau pake yg listview di file categori
