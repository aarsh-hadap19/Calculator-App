import 'package:flutter/material.dart';
import 'home_page.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator App",
      theme: new ThemeData( primarySwatch: Colors.cyan, appBarTheme: AppBarTheme(color: Colors.redAccent)),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
