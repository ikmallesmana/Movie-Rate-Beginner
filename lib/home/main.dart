import 'package:flutter/material.dart';
import 'package:movie/detail/detail_screen.dart';
import 'package:movie/home/main_screen.dart';
import 'package:movie/model/film.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Movie',
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}
