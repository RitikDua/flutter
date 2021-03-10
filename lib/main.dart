import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main(){
	runApp(MyApp());
}

class MyApp extends StatefulWidget{
	@override
	State<StatefulWidget> createState() {
		return _MyAppState();	
	}
}

class _MyAppState extends State<MyApp>{
	
	var _questionIndex=0;
	
	void _answerQuestion(){
		
		setState((){
			_questionIndex=_questionIndex+1;
		});
		
	//	questionIndex++;
		print("Answer chosen $_questionIndex");
	}
	@override
	Widget build(BuildContext context) {
		var questions=[
			{
				'questionText':'What\'s your fav color?','answers':['Bk','ed','Gen','ite']
			},
{
				'questionText':'What\'s your fav animal?','answers':['B','ed','Gren','Whe']
			},{
				'questionText':'What\'s your fav a?','answers':['Bck','e','ren','hie']
			},{
				'questionText':'What\'s your fav ana?','answers':['Blak','ed','Gren','Wite']
			},
		];
	
		// TODO: implement build
		return MaterialApp(home:Scaffold(
				appBar: AppBar(title:Text('My First App'),),
				body:_questionIndex<questions.length ? Column(children:[
					Question(questions[_questionIndex]['questionText']),
					...(questions[_questionIndex]['answers'] as List<String>).map((answer){ return Answer(_answerQuestion,answer);}).toList(),
				],):Center(child:Text("You did it")),));//MaterialApp

	}
	
}
