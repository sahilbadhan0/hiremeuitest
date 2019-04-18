import 'package:flutter/material.dart';
import 'package:hiremeuitest/search.dart';
import 'homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/search':(context)=>SearchPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),

          textTheme: ButtonTextTheme.normal
        ),
        textTheme:  TextTheme(

        )
      ),
      home: HomePage(),
    );
  }
}

