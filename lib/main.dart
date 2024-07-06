import 'package:flutter/material.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/fauna_screen.dart';
import 'package:myapp/screens/flora_screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main(){
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
        '/home': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/fauna': (context) => ListFaunaScreen(),
        '/flora': (context) => ListFloraScreen(),
      },
      initialRoute: '/home',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 129, 253, 112),
        ),
        body: HomeScreen(),
      )
      );
  }
}
      