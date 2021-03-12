import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './randomWords.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
@override
  Widget build(BuildContext context) {
 	final wordPair=WordPair.random();
	return MaterialApp(
			home:Scaffold(
				appBar:AppBar(title: Text('Welcome to flutter'),	),
			body:Center(child:RandomWords(),)
			));
  } }
