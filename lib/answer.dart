import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget{
	final Function selectHandler;
	final String answerText;
	Answer(this.selectHandler,this.answerText);

	@override
	Widget build(BuildContext context) {
	// TODO: implement build
		return Container(
			width:double.infinity,
			child:RaisedButton(
				color:Colors.blue,
				child:Text(this.answerText),
				onPressed:selectHandler,
				),);
	}
}
