import 'package:flutter/material.dart';
import './store_answers.dart';
import './store_questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{

  var questions = [
    {'question': "Select clothing",
      'answer': ['Shirt', 'Sweater']
    },
    {'question': "Select color",
      'answer': ['Pink', 'Blue', 'Yellow', 'Purple']
    },
    {'question': "Select size",
      'answer': ['S', 'M', 'L']
    },
  ];
  var _questionIndex = 0;

  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
          children: [
            StoreQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
                  return StoreAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}