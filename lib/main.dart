import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> countries = [
      "Polen",
      "Danmark",
      "Irak",
      "Spanien",
      "Syd Korea",
      "Ungarn",
      "Tyskland",
      "England",
    ];

    countries.sort((a, b) {
      //sorting in ascending order
      return a.compareTo(b);

      //countries.sort((a, b){ //sorting in descending order
      // return b.compareTo(a);
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Sortering af liste alfabetisk"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            children: countries.map((cone) {
              return Container(
                child: Card(
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Text(cone, style: TextStyle(fontSize: 18))),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
