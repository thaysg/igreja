import 'package:flutter/material.dart';
import 'package:igreja/Home/home.dart';
import 'package:igreja/NavBar/navbar.dart';
import 'footer/footer.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Igreja Vida Nova',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromRGBO(195, 20, 50, 1.0),
              Color.fromRGBO(36, 11, 54, 1.0)
              ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Home(),
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
